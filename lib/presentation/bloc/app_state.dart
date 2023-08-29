import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:openvpn_flutter/openvpn_flutter.dart';

import '../../domain/model/index.dart';
import '../../utils/gen/colors.gen.dart';
import '../../utils/utils.dart';

part 'app_state.freezed.dart';

@Freezed()
class AppState with _$AppState {
  const factory AppState({
    @Default([]) List<VpnServerModel> servers,
    @Default([]) List<HistoryModel> histories,
    @Default(false) bool isLoading,
    VpnServerModel? currentServer,
    VpnStatus? vpnStatus,
    VPNStage? vpnStage,
    @Default([]) List<ProductDetails> productDetailsList,
    ProductDetails? selectedProductDetails,
    @Default(false) bool isVip,
  }) = _AppState;
}

extension AppStateExt on AppState {
  String get titleLoadingButton {
    if (vpnStage == VPNStage.disconnected) {
      return 'Connect';
    }

    if (vpnStage == VPNStage.connected) {
      return 'Disconnect';
    }
    return 'Connecting...';
  }

  Color get backgroundLoadingButton {
    if (vpnStage == VPNStage.disconnected) {
      return AppColors.colorBlue;
    }
    return AppColors.colorRed;
  }

  bool get isConnecting {
    return vpnStage != VPNStage.disconnected && vpnStage != VPNStage.connected;
  }

  String get duration {
    if (vpnStage == VPNStage.connected) {
      return vpnStatus?.duration ?? '00:00:00';
    }
    return '00:00:00';
  }

  String get byteIn {
    if (vpnStage == VPNStage.connected) {
      final bytes = int.parse(vpnStatus?.byteIn ?? '0');
      return Utils.convertBytesToString(bytes);
    }
    return '-- KB';
  }

  String get byteOut {
    if (vpnStage == VPNStage.connected) {
      final bytes = int.parse(vpnStatus?.byteOut ?? '0');
      return Utils.convertBytesToString(bytes);
    }
    return '-- KB';
  }
}
