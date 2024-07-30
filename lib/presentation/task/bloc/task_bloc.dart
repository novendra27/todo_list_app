import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_app/core/resources/data_state.dart';
import 'package:todo_list_app/domain/usecases/task/get_task.dart';
import 'package:todo_list_app/presentation/task/bloc/task_event.dart';
import 'package:todo_list_app/presentation/task/bloc/task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final GetTaskUseCase _getTaskUseCase;

  TaskBloc(this._getTaskUseCase) : super(const TaskLoading()) {
    on<GetTasks>(onGetTasks);
  }

  void onGetTasks(GetTasks event, Emitter<TaskState> emit) async {
    final dataState = await _getTaskUseCase();

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(TaskDone(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(TaskError(dataState.error!));
    }
  }
}
