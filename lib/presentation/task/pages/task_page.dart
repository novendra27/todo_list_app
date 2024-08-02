import 'package:flutter/material.dart';
import 'package:todo_list_app/common/widgets/app_bar.dart';
import 'package:todo_list_app/presentation/task/widgets/task_list_widget.dart';

import '../widgets/app_bar_task_widget.dart';
import '../widgets/elevated_button_task_widget.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(
        content: AppBarTaskWidget(),
        height: 117,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                TaskListWidget(),
              ],
            ),
          ),
          ElevatedButtonTaskWidget(),
        ],
      ),
    );
  }
}
