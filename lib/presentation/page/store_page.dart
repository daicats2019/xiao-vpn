import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

import '../../utils/gen/colors.gen.dart';
import '../bloc/app_cubit.dart';
import '../bloc/app_state.dart';
import '../widget/widget.dart';

@RoutePage()
class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppLargeText(text: 'Shopping'),
      ),
      body: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return ListView.separated(
            itemBuilder: (context, index) {
              final productDetails = state.productDetailsList[index];
              return _buildItem(productDetails);
            },
            separatorBuilder: (context, int index) {
              return const Divider();
            },
            itemCount: state.productDetailsList.length,
          );
        },
      ),
    );
  }

  Widget _buildItem(ProductDetails productDetails) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8) +
          const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppMediumText(text: productDetails.title),
                AppText(
                  text: productDetails.price,
                  color: AppColors.textSecondary,
                )
              ],
            ),
          ),
          const SizedBox(width: 16),
          AppButtons(
            text: 'Subscribe',
            onPressed: () async {
              await context
                  .read<AppCubit>()
                  .subscribeWithProduct(productDetails);
            },
            backgroundColor: Colors.blue,
            width: 120,
          )
        ],
      ),
    );
  }
}
