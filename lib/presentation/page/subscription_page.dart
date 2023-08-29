import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:xiao_vpn/presentation/bloc/app_cubit.dart';
import 'package:xiao_vpn/presentation/bloc/app_state.dart';

import '../../utils/extension/color_extension.dart';
import '../../utils/gen/assets.gen.dart';
import '../widget/widget.dart';

@RoutePage()
class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 0, 197, 255),
                Color.fromARGB(255, 0, 114, 255),
              ],
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: AppIconButtons(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Assets.icons.icClose.svg(),
            ),
          ),
          body: BlocBuilder<AppCubit, AppState>(
            builder: (context, state) {
              return Column(
                children: [
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Image.asset(Assets.images.imagePremium02.path),
                  ),
                  if (state.productDetailsList.length > 2)
                    _buildSubscriptions(state.productDetailsList),
                  const AppText(
                    text: '3 days trial with package 89,000 Đ / One week',
                    size: 12,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 16),
                  AppButtons(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    backgroundColor: ColorExt.fromHex('#0466C8'),
                    text: 'Try it out and subscribe',
                    onPressed: () async {
                      await context.read<AppCubit>().subscribe();
                    },
                  ),
                  const SizedBox(height: 16),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Colors.white10,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 8) +
                        const EdgeInsets.symmetric(horizontal: 16),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Assets.icons.icClick.svg(),
                        const SizedBox(width: 8),
                        const AppText(
                          text: 'Can cancel anytime!',
                          size: 10,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  _buildFeatures(),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSubscriptions(List<ProductDetails> products) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16) +
          const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          _buildSubscriptionItem('One Week', '89.000 Đ', products[0]),
          const SizedBox(width: 8),
          _buildSubscriptionItem('One Month', '289.000 Đ', products[1]),
          const SizedBox(width: 8),
          _buildSubscriptionItem('One Year', '689.000 Đ', products[2]),
        ],
      ),
    );
  }

  Widget _buildSubscriptionItem(
    String label,
    String price,
    ProductDetails productDetails,
  ) {
    return Expanded(
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: InkWell(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  onTap: () {
                    context.read<AppCubit>().setProductDetails(productDetails);
                  },
                  child: Container(
                    width: double.maxFinite,
                    height: 141,
                    decoration: const BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppMediumText(text: label, color: Colors.white),
                        AppLargeText(
                          text: productDetails.price,
                          color: Colors.white,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                child: Visibility(
                  visible:
                      productDetails.id == state.selectedProductDetails?.id,
                  child: Assets.icons.icChecked35.svg(),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  Widget _buildFeatures() {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.only(top: 24),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppMediumText(
            text: 'Benefits of the premium package:',
            color: ColorExt.fromHex('#FFCB27'),
          ),
          const SizedBox(height: 8),
          const AppText(text: '• Remove ads', size: 12, color: Colors.white),
          const AppText(
            text: '• Unlock all premium servers',
            size: 12,
            color: Colors.white,
          ),
          const AppText(
            text: '• Super fast server, easy access',
            size: 12,
            color: Colors.white,
          ),
          const AppText(
            text: '• 24/7 customer support',
            size: 12,
            color: Colors.white,
          ),
          const SizedBox(height: 8),
          const AppText(
            text:
                'Subscriptions will be changed to your payment method through '
                'your iTunes Billing account. Your subscription will '
                'automatically renew unless canceled at least 24 '
                'hours before the end of the current period. '
                'Manage your subscriptions in Account Settings '
                'after Purchase.',
            color: Colors.white70,
            size: 12,
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
