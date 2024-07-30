import 'package:todo_list_app/core/resources/data_state.dart';
import 'package:todo_list_app/data/models/task/task.dart';
import 'package:todo_list_app/domain/repository/task/task_repo.dart';

class TaskRepoImpl implements TaskRepo {
  @override
  Future<DataState<List<TaskModel>>> getTasks() {
    throw UnimplementedError();
  }
}