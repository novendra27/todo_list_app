import 'package:flutter/material.dart';
import 'package:todo_list_app/core/configs/theme/app_colors.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final Widget content;
  final double height;

  const AppBarWidget({super.key, required this.content, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: height,
      decoration: const BoxDecoration(
        color: AppColors.colorBackground,
        border: Border(
          bottom: BorderSide(
            color: AppColors.colorIcon,
            width: 0.5,
          ),
        ),
      ),
      child: content,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
