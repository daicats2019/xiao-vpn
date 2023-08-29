// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppState {
  List<VpnServerModel> get servers => throw _privateConstructorUsedError;
  List<HistoryModel> get histories => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  VpnServerModel? get currentServer => throw _privateConstructorUsedError;
  VpnStatus? get vpnStatus => throw _privateConstructorUsedError;
  VPNStage? get vpnStage => throw _privateConstructorUsedError;
  List<ProductDetails> get productDetailsList =>
      throw _privateConstructorUsedError;
  ProductDetails? get selectedProductDetails =>
      throw _privateConstructorUsedError;
  bool get isVip => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {List<VpnServerModel> servers,
      List<HistoryModel> histories,
      bool isLoading,
      VpnServerModel? currentServer,
      VpnStatus? vpnStatus,
      VPNStage? vpnStage,
      List<ProductDetails> productDetailsList,
      ProductDetails? selectedProductDetails,
      bool isVip});

  $VpnServerModelCopyWith<$Res>? get currentServer;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? servers = null,
    Object? histories = null,
    Object? isLoading = null,
    Object? currentServer = freezed,
    Object? vpnStatus = freezed,
    Object? vpnStage = freezed,
    Object? productDetailsList = null,
    Object? selectedProductDetails = freezed,
    Object? isVip = null,
  }) {
    return _then(_value.copyWith(
      servers: null == servers
          ? _value.servers
          : servers // ignore: cast_nullable_to_non_nullable
              as List<VpnServerModel>,
      histories: null == histories
          ? _value.histories
          : histories // ignore: cast_nullable_to_non_nullable
              as List<HistoryModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentServer: freezed == currentServer
          ? _value.currentServer
          : currentServer // ignore: cast_nullable_to_non_nullable
              as VpnServerModel?,
      vpnStatus: freezed == vpnStatus
          ? _value.vpnStatus
          : vpnStatus // ignore: cast_nullable_to_non_nullable
              as VpnStatus?,
      vpnStage: freezed == vpnStage
          ? _value.vpnStage
          : vpnStage // ignore: cast_nullable_to_non_nullable
              as VPNStage?,
      productDetailsList: null == productDetailsList
          ? _value.productDetailsList
          : productDetailsList // ignore: cast_nullable_to_non_nullable
              as List<ProductDetails>,
      selectedProductDetails: freezed == selectedProductDetails
          ? _value.selectedProductDetails
          : selectedProductDetails // ignore: cast_nullable_to_non_nullable
              as ProductDetails?,
      isVip: null == isVip
          ? _value.isVip
          : isVip // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VpnServerModelCopyWith<$Res>? get currentServer {
    if (_value.currentServer == null) {
      return null;
    }

    return $VpnServerModelCopyWith<$Res>(_value.currentServer!, (value) {
      return _then(_value.copyWith(currentServer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$_AppStateCopyWith(
          _$_AppState value, $Res Function(_$_AppState) then) =
      __$$_AppStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<VpnServerModel> servers,
      List<HistoryModel> histories,
      bool isLoading,
      VpnServerModel? currentServer,
      VpnStatus? vpnStatus,
      VPNStage? vpnStage,
      List<ProductDetails> productDetailsList,
      ProductDetails? selectedProductDetails,
      bool isVip});

  @override
  $VpnServerModelCopyWith<$Res>? get currentServer;
}

/// @nodoc
class __$$_AppStateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_AppState>
    implements _$$_AppStateCopyWith<$Res> {
  __$$_AppStateCopyWithImpl(
      _$_AppState _value, $Res Function(_$_AppState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? servers = null,
    Object? histories = null,
    Object? isLoading = null,
    Object? currentServer = freezed,
    Object? vpnStatus = freezed,
    Object? vpnStage = freezed,
    Object? productDetailsList = null,
    Object? selectedProductDetails = freezed,
    Object? isVip = null,
  }) {
    return _then(_$_AppState(
      servers: null == servers
          ? _value._servers
          : servers // ignore: cast_nullable_to_non_nullable
              as List<VpnServerModel>,
      histories: null == histories
          ? _value._histories
          : histories // ignore: cast_nullable_to_non_nullable
              as List<HistoryModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentServer: freezed == currentServer
          ? _value.currentServer
          : currentServer // ignore: cast_nullable_to_non_nullable
              as VpnServerModel?,
      vpnStatus: freezed == vpnStatus
          ? _value.vpnStatus
          : vpnStatus // ignore: cast_nullable_to_non_nullable
              as VpnStatus?,
      vpnStage: freezed == vpnStage
          ? _value.vpnStage
          : vpnStage // ignore: cast_nullable_to_non_nullable
              as VPNStage?,
      productDetailsList: null == productDetailsList
          ? _value._productDetailsList
          : productDetailsList // ignore: cast_nullable_to_non_nullable
              as List<ProductDetails>,
      selectedProductDetails: freezed == selectedProductDetails
          ? _value.selectedProductDetails
          : selectedProductDetails // ignore: cast_nullable_to_non_nullable
              as ProductDetails?,
      isVip: null == isVip
          ? _value.isVip
          : isVip // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AppState implements _AppState {
  const _$_AppState(
      {final List<VpnServerModel> servers = const [],
      final List<HistoryModel> histories = const [],
      this.isLoading = false,
      this.currentServer,
      this.vpnStatus,
      this.vpnStage,
      final List<ProductDetails> productDetailsList = const [],
      this.selectedProductDetails,
      this.isVip = false})
      : _servers = servers,
        _histories = histories,
        _productDetailsList = productDetailsList;

  final List<VpnServerModel> _servers;
  @override
  @JsonKey()
  List<VpnServerModel> get servers {
    if (_servers is EqualUnmodifiableListView) return _servers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_servers);
  }

  final List<HistoryModel> _histories;
  @override
  @JsonKey()
  List<HistoryModel> get histories {
    if (_histories is EqualUnmodifiableListView) return _histories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_histories);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final VpnServerModel? currentServer;
  @override
  final VpnStatus? vpnStatus;
  @override
  final VPNStage? vpnStage;
  final List<ProductDetails> _productDetailsList;
  @override
  @JsonKey()
  List<ProductDetails> get productDetailsList {
    if (_productDetailsList is EqualUnmodifiableListView)
      return _productDetailsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productDetailsList);
  }

  @override
  final ProductDetails? selectedProductDetails;
  @override
  @JsonKey()
  final bool isVip;

  @override
  String toString() {
    return 'AppState(servers: $servers, histories: $histories, isLoading: $isLoading, currentServer: $currentServer, vpnStatus: $vpnStatus, vpnStage: $vpnStage, productDetailsList: $productDetailsList, selectedProductDetails: $selectedProductDetails, isVip: $isVip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppState &&
            const DeepCollectionEquality().equals(other._servers, _servers) &&
            const DeepCollectionEquality()
                .equals(other._histories, _histories) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.currentServer, currentServer) ||
                other.currentServer == currentServer) &&
            (identical(other.vpnStatus, vpnStatus) ||
                other.vpnStatus == vpnStatus) &&
            (identical(other.vpnStage, vpnStage) ||
                other.vpnStage == vpnStage) &&
            const DeepCollectionEquality()
                .equals(other._productDetailsList, _productDetailsList) &&
            (identical(other.selectedProductDetails, selectedProductDetails) ||
                other.selectedProductDetails == selectedProductDetails) &&
            (identical(other.isVip, isVip) || other.isVip == isVip));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_servers),
      const DeepCollectionEquality().hash(_histories),
      isLoading,
      currentServer,
      vpnStatus,
      vpnStage,
      const DeepCollectionEquality().hash(_productDetailsList),
      selectedProductDetails,
      isVip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      __$$_AppStateCopyWithImpl<_$_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {final List<VpnServerModel> servers,
      final List<HistoryModel> histories,
      final bool isLoading,
      final VpnServerModel? currentServer,
      final VpnStatus? vpnStatus,
      final VPNStage? vpnStage,
      final List<ProductDetails> productDetailsList,
      final ProductDetails? selectedProductDetails,
      final bool isVip}) = _$_AppState;

  @override
  List<VpnServerModel> get servers;
  @override
  List<HistoryModel> get histories;
  @override
  bool get isLoading;
  @override
  VpnServerModel? get currentServer;
  @override
  VpnStatus? get vpnStatus;
  @override
  VPNStage? get vpnStage;
  @override
  List<ProductDetails> get productDetailsList;
  @override
  ProductDetails? get selectedProductDetails;
  @override
  bool get isVip;
  @override
  @JsonKey(ignore: true)
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
