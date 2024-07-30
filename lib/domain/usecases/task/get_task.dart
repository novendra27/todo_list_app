import 'package:todo_list_app/core/resources/data_state.dart';
import 'package:todo_list_app/core/usecase/usecase.dart';
import 'package:todo_list_app/domain/entities/task/task.dart';
import 'package:todo_list_app/domain/repository/task/task_repo.dart';

class GetTaskUseCase implements Usecase<DataState<List<TaskEntity>>, void> {
  final TaskRepo _taskRepo;

  GetTaskUseCase(this._taskRepo);
  @override
  Future<DataState<List<TaskEntity>>> call({void params}) {
    return _taskRepo.getTasks();
  }

}