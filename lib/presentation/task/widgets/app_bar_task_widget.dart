import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:todo_list_app/core/configs/assets/app_images.dart';
import 'package:todo_list_app/core/configs/assets/app_svg.dart';
import 'package:todo_list_app/core/configs/theme/app_colors.dart';

class AppBarTaskWidget extends StatelessWidget {
  const AppBarTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(60),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              AppSvg.sidebar,
              width: 24,
              height: 24,
            ),
            Row(
              children: [
                Container(
                  width: 31,
                  height: 31,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppImages.logo),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Gap(10),
                const Text(
                  'To-do',
                  style: TextStyle(
                    fontSize: 22,
                    color: AppColors.colorIcon,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SvgPicture.asset(
              AppSvg.search,
              width: 24,
              height: 24,
            ),
          ],
        ),
      ],
    );
  }
}
