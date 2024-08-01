import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:todo_list_app/presentation/task/widgets/container_widget.dart';

import 'task_list_tile_widget.dart';

class TaskListWidget extends StatelessWidget {
  const TaskListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      title: 'Task List',
      child: ListView.separated(
        itemCount: 8,
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.only(bottom: 12),
        separatorBuilder: (BuildContext context, int index) {
          return const Gap(12);
        },
        itemBuilder: (BuildContext context, int index) {
          return const TaskListTile();
        },
      ),
    );
  }
}
