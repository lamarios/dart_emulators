// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toolchain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Toolchain {
  String get adbPath => throw _privateConstructorUsedError;
  String get avdmanagerPath => throw _privateConstructorUsedError;
  String get emulatorPath => throw _privateConstructorUsedError;
  String get flutterPath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ToolchainCopyWith<Toolchain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToolchainCopyWith<$Res> {
  factory $ToolchainCopyWith(Toolchain value, $Res Function(Toolchain) then) =
      _$ToolchainCopyWithImpl<$Res, Toolchain>;
  @useResult
  $Res call(
      {String adbPath,
      String avdmanagerPath,
      String emulatorPath,
      String flutterPath});
}

/// @nodoc
class _$ToolchainCopyWithImpl<$Res, $Val extends Toolchain>
    implements $ToolchainCopyWith<$Res> {
  _$ToolchainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adbPath = null,
    Object? avdmanagerPath = null,
    Object? emulatorPath = null,
    Object? flutterPath = null,
  }) {
    return _then(_value.copyWith(
      adbPath: null == adbPath
          ? _value.adbPath
          : adbPath // ignore: cast_nullable_to_non_nullable
              as String,
      avdmanagerPath: null == avdmanagerPath
          ? _value.avdmanagerPath
          : avdmanagerPath // ignore: cast_nullable_to_non_nullable
              as String,
      emulatorPath: null == emulatorPath
          ? _value.emulatorPath
          : emulatorPath // ignore: cast_nullable_to_non_nullable
              as String,
      flutterPath: null == flutterPath
          ? _value.flutterPath
          : flutterPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ToolchainCopyWith<$Res> implements $ToolchainCopyWith<$Res> {
  factory _$$_ToolchainCopyWith(
          _$_Toolchain value, $Res Function(_$_Toolchain) then) =
      __$$_ToolchainCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String adbPath,
      String avdmanagerPath,
      String emulatorPath,
      String flutterPath});
}

/// @nodoc
class __$$_ToolchainCopyWithImpl<$Res>
    extends _$ToolchainCopyWithImpl<$Res, _$_Toolchain>
    implements _$$_ToolchainCopyWith<$Res> {
  __$$_ToolchainCopyWithImpl(
      _$_Toolchain _value, $Res Function(_$_Toolchain) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adbPath = null,
    Object? avdmanagerPath = null,
    Object? emulatorPath = null,
    Object? flutterPath = null,
  }) {
    return _then(_$_Toolchain(
      adbPath: null == adbPath
          ? _value.adbPath
          : adbPath // ignore: cast_nullable_to_non_nullable
              as String,
      avdmanagerPath: null == avdmanagerPath
          ? _value.avdmanagerPath
          : avdmanagerPath // ignore: cast_nullable_to_non_nullable
              as String,
      emulatorPath: null == emulatorPath
          ? _value.emulatorPath
          : emulatorPath // ignore: cast_nullable_to_non_nullable
              as String,
      flutterPath: null == flutterPath
          ? _value.flutterPath
          : flutterPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Toolchain extends _Toolchain {
  const _$_Toolchain(
      {required this.adbPath,
      required this.avdmanagerPath,
      required this.emulatorPath,
      required this.flutterPath})
      : super._();

  @override
  final String adbPath;
  @override
  final String avdmanagerPath;
  @override
  final String emulatorPath;
  @override
  final String flutterPath;

  @override
  String toString() {
    return 'Toolchain(adbPath: $adbPath, avdmanagerPath: $avdmanagerPath, emulatorPath: $emulatorPath, flutterPath: $flutterPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Toolchain &&
            (identical(other.adbPath, adbPath) || other.adbPath == adbPath) &&
            (identical(other.avdmanagerPath, avdmanagerPath) ||
                other.avdmanagerPath == avdmanagerPath) &&
            (identical(other.emulatorPath, emulatorPath) ||
                other.emulatorPath == emulatorPath) &&
            (identical(other.flutterPath, flutterPath) ||
                other.flutterPath == flutterPath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, adbPath, avdmanagerPath, emulatorPath, flutterPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToolchainCopyWith<_$_Toolchain> get copyWith =>
      __$$_ToolchainCopyWithImpl<_$_Toolchain>(this, _$identity);
}

abstract class _Toolchain extends Toolchain {
  const factory _Toolchain(
      {required final String adbPath,
      required final String avdmanagerPath,
      required final String emulatorPath,
      required final String flutterPath}) = _$_Toolchain;
  const _Toolchain._() : super._();

  @override
  String get adbPath;
  @override
  String get avdmanagerPath;
  @override
  String get emulatorPath;
  @override
  String get flutterPath;
  @override
  @JsonKey(ignore: true)
  _$$_ToolchainCopyWith<_$_Toolchain> get copyWith =>
      throw _privateConstructorUsedError;
}
