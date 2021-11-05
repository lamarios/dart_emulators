import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:path/path.dart' as p;
import 'package:rxdart/rxdart.dart' hide Kind;
import 'package:emulators/src/config.dart' as c;
import 'package:emulators/src/platforms/android.dart' as android;
import 'package:emulators/src/platforms/ios.dart' as ios;
import 'package:emulators/src/flutter.dart' as flutter;
import 'package:emulators/src/models/device.dart';

/// Get a list of the available [Device]'s
final list = (c.Config config) => Rx.merge<Device>([
      android.list(config),
      ios.list(config),
    ]);

/// Boot the specified [Device], with the given [c.Config].
Future<Device> Function(Device) boot(c.Config config) =>
    (device) => device.booted
        ? Future.value(device)
        : device.platform == DevicePlatform.IOS
            ? ios.boot(config)(device)
            : android.boot(config)(device);

/// Shutdown the specified [Device]
Future<void> Function(Device) shutdown(c.Config config) =>
    (device) => device.platform == DevicePlatform.IOS
        ? ios.shutdown(config)(device)
        : android.shutdown(config)(device);

/// Attempt to shutdown all running emulators on the host.
Future<void> shutdownAll(c.Config config) =>
    flutter.running(config).asyncMap(shutdown(config)).forEach((_) {});

/// Clean up the status bar for the given [Device]
final cleanStatusBar = (c.Config config) => (Device device) =>
    device.platform == DevicePlatform.IOS
        ? ios.cleanStatusBar(config)(device)
        : android.cleanStatusBar(config)(device);

/// Wraps [cleanStatusBar], but uses the device from the EMULATORS_DEVICE
/// environment variable.
final cleanStatusBarFromEnv = (c.Config config) => c.currentDevice().match(
      cleanStatusBar(config),
      () => Future.value(),
    );

/// Takes a screenshot for the given [Device]. Returns the screenshot in binary
/// form, as a `Future<List<int>>`.
final screenshot = (c.Config config) => (Device device) =>
    device.platform == DevicePlatform.IOS
        ? ios.screenshot(config)(device)
        : android.screenshot(config)(device);

/// Wraps [screenshot], but uses the device from the EMULATORS_DEVICE
/// environment variable.
final screenshotFromEnv = (c.Config config) => c.currentDevice().match(
      (device) =>
          screenshot(config)(device).then((image) => tuple2(device, image)),
      () => Future.error('Device not set') as Future<Tuple2<Device, List<int>>>,
    );

/// Wraps [screenshot], but writes the screenshot to a file depending on the
/// [Device]'s platform.
final writeScreenshot = (c.Config config) => ({
      required String iosPath,
      required String androidPath,
    }) =>
        (Device device) => (String name) =>
            screenshot(config)(device).then<void>((image) async {
              final file = [device.name, '$name.png'].join('_');
              final basePath =
                  device.platform == DevicePlatform.IOS ? iosPath : androidPath;
              final path = p.join(basePath, file);

              await Directory(basePath).create(recursive: true);
              await File(path).writeAsBytes(image);
            });

/// Wraps [writeScreenshot], but uses the device from the EMULATORS_DEVICE
/// environment variable.
final writeScreenshotFromEnv = (c.Config config) => ({
      required String iosPath,
      required String androidPath,
    }) =>
        c.currentDevice().match(
              writeScreenshot(config)(
                androidPath: androidPath,
                iosPath: iosPath,
              ),
              () => (String name) => Future.value(),
            );

/// Iterators over the list of device name / id's, boots and runs the given
/// function over each one sequentially.
final forEach = (c.Config config) => (
      List<String> nameOrIds, {
      Duration timeout = const Duration(minutes: 3),
    }) =>
        (Future<void> Function(Device) process) => list(config)
                .where((d) =>
                    nameOrIds.contains(d.id) || nameOrIds.contains(d.name))
                .asyncMap<void>((device) async {
              final booted = await boot(config)(device);
              final running = await flutter.waitUntilRunning(config)(
                device,
                timeout: timeout,
              );
              await process(running);

              return shutdown(config)(booted);
            }).forEach((_) {});
