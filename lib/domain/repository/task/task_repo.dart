import 'package:todo_list_app/core/resources/data_state.dart';
import 'package:todo_list_app/domain/entities/task/task.dart';

abstract class TaskRepo {
  Future<DataState<List<TaskEntity>>> getTasks();
}