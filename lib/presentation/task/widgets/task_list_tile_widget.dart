import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:todo_list_app/core/configs/theme/app_colors.dart';

class TaskListTile extends StatelessWidget {
  const TaskListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.colorBackgroundTile,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          children: [
            _topTileContent(),
            _bottomTileContent(),
          ],
        ),
      ),
    );
  }

  Container _topTileContent() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.colorIcon,
            width: 0.5,
          ),
        ),
      ),
      child: const Column(
        children: [
          Row(
            children: [
              Text(
                'Task 1 - Finish the design',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.colorWhite,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Gap(6),
          Text(
            'Description: lorem ipsum dolor sit amet consectetur adipiscing elit',
            style: TextStyle(
              fontSize: 14,
              color: AppColors.textSecondary,
              fontWeight: FontWeight.w400,
            ),
          ),
          Gap(14),
        ],
      ),
    );
  }

  Container _bottomTileContent() {
    return Container(
      padding: const EdgeInsets.only(top: 15, bottom: 5, left: 20, right: 20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                '10:05 am',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.colorWhite,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Gap(4),
              Text(
                '|',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.colorWhite,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Gap(4),
              Text(
                '24 April',
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.colorWhite,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          Text(
            'Edit',
            style: TextStyle(
              fontSize: 14,
              color: AppColors.textEditList,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
