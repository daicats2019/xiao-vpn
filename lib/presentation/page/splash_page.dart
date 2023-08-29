import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils/gen/assets.gen.dart';
import '../../utils/gen/colors.gen.dart';
import '../bloc/app_cubit.dart';
import '../bloc/app_state.dart';
import '../route/app_router.gr.dart';
import '../widget/widget.dart';
import 'main_page.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<AppCubit>().fetchServerList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: BlocListener<AppCubit, AppState>(
        listener: (context, state) {
          if (state.servers.isNotEmpty) {

            AutoRouter.of(context).replace(const MainRoute());
          }
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 260),
              child: Image.asset('assets/images/Vector top right.png'),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 310),
              child: Image.asset('assets/images/Vector top left.png'),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 320),
              child: Image.asset('assets/images/Vector mid right.png'),
            ),
            SizedBox(
              height: 60,
            ),
            Image.asset('assets/images/Group 11.png'),
            SizedBox(
              height: 115,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 310),
              child: Image.asset('assets/images/Vector top left.png'),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 260),
              child: Image.asset('assets/images/Vector bot right.png'),
            ),
            SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 240),
                  child: Image.asset('assets/images/Vector bot left.png'),
                ),
                const Center(
                  child: Text(
                    'Fast - Safe - Unlimited',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        color: Color(0xfffe9526)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
