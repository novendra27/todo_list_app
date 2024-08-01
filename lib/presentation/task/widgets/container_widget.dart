import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:todo_list_app/core/configs/theme/app_colors.dart';

class ContainerWidget extends StatelessWidget {
  final String ? title;
  final Widget child;

  const ContainerWidget({super.key, this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (title != null) header(),
        const Gap(18),
        child,
      ],
    );
  }

  Widget header() {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title ?? '',
            style: const TextStyle(
              fontSize: 20,
              color: AppColors.textTitleList,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
