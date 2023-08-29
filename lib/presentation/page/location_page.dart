import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:xiao_vpn/utils/extension/date_extension.dart';

import '../../domain/model/index.dart';
import '../../utils/gen/assets.gen.dart';
import '../../utils/gen/colors.gen.dart';
import '../../utils/utils.dart';
import '../bloc/app_cubit.dart';
import '../bloc/app_state.dart';
import '../route/app_router.gr.dart';
import '../widget/widget.dart';

const _tag = 'LocationPage';

@RoutePage()
class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AppCubit>().fetchHistoryList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppCubit, AppState>(
      listener: (context, state) {
        if (state.isLoading) {
          EasyLoading.show();
        } else {
          EasyLoading.dismiss();
        }
        Utils.log(_tag, 'isLoading: ${state.isLoading}');
      },
      child: DefaultTabController(
        length: 1,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const AppLargeText(text: 'Select Location'),
            actions: [
              AppIconButtons(
                icon: Assets.icons.icSync.svg(),
                onPressed: () {
                  context.read<AppCubit>().fetchServerList(isRefresh: true);
                },
              )
            ],
          ),
          body: Stack(
            children: [
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SegmentedTabControl(
                  backgroundColor: Colors.grey.shade300,
                  indicatorColor: AppColors.colorBlue,
                  tabTextColor: AppColors.textSecondary,
                  selectedTabTextColor: Colors.white,
                  squeezeIntensity: 2,
                  height: 40,
                  tabs: const [
                    SegmentTab(label: 'Recent location')
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 56),
                child: TabBarView(
                  physics: const BouncingScrollPhysics(),
                  children: [ _buildRecentLocationTab()],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildRecentLocationTab() {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Visibility(
              visible: state.histories.isEmpty,
              child: Column(
                children: [
                  const SizedBox(height: 150),
                  Image.asset(Assets.images.imageEmpty.path, width: 260),
                  const SizedBox(height: 16),
                  const AppText(
                    text: "You don't have any server location\n usage history!",
                    size: 16,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Visibility(
              visible: state.histories.isNotEmpty,
              child: ListView.separated(
                padding: const EdgeInsets.only(bottom: 16),
                itemBuilder: (context, index) {
                  final history = state.histories[index];
                  return _buildHistoryItem(history);
                },
                itemCount: state.histories.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 16);
                },
              ),
            )
          ],
        );
      },
    );
  }

  Widget _buildItem(VpnServerModel server, bool isSelected) {
    return InkWell(
      onTap: isSelected
          ? null
          : () {
              _handleItemTapped(server);
            },
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: const BoxDecoration(
          color: AppColors.backgroundItem,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl: server.flag,
              width: 35,
            ),
            const SizedBox(width: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppMediumText(
                  text: server.country ?? '',
                ),
                AppText(
                  text: server.region ?? '',
                  size: 12,
                  color: AppColors.textSecondary,
                )
              ],
            ),
            const Spacer(),
            isSelected
                ? Assets.icons.icChecked.svg()
                : Assets.icons.icUncheck.svg()
          ],
        ),
      ),
    );
  }

  Widget _buildHistoryItem(HistoryModel history) {
    final server = history.vpnServerModel;
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
        color: AppColors.backgroundItem,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl: server.flag,
            width: 35,
          ),
          const SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppMediumText(
                text: server.country ?? '',
              ),
              AppText(
                text: server.region ?? '',
                size: 12,
                color: AppColors.textSecondary,
              )
            ],
          ),
          const Spacer(),
          AppText(
            text: history.createAt.toStringFormatted(),
            size: 12,
            color: AppColors.textSecondary,
          )
        ],
      ),
    );
  }

  void _handleItemTapped(VpnServerModel server) {
    if (server.vip) {
      AutoRouter.of(context).push(const SubscriptionRoute());
    } else {
      context.read<AppCubit>().setCurrentServer(server);
      AutoRouter.of(context).pop();
    }
  }
}
