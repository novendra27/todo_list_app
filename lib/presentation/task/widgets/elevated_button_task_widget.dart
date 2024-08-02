import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:todo_list_app/core/configs/assets/app_svg.dart';
import 'package:todo_list_app/core/configs/theme/app_colors.dart';

class ElevatedButtonTaskWidget extends StatelessWidget {
  const ElevatedButtonTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding:
            const EdgeInsets.only(top: 51, bottom: 34, left: 59, right: 59),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.backgroundLinear1, AppColors.backgroundLinear2],
            stops: [0.0, 0.85],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.colorBackgroundButton,
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Add new task',
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.colorWhite,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Gap(16),
              SvgPicture.asset(
                AppSvg.addRound,
                width: 28,
                height: 28,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
