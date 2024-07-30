import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:todo_list_app/domain/entities/task/task.dart';

abstract class TaskState extends Equatable {
  final List<TaskEntity>? tasks;
  final DioException? error;

  const TaskState({this.tasks, this.error});

  @override
  List<Object> get props => [tasks!, error!];
}

class TaskLoading extends TaskState {
  const TaskLoading();
}

class TaskDone extends TaskState {
  const TaskDone(List<TaskEntity> tasks) : super(tasks: tasks);
}

class TaskError extends TaskState {
  const TaskError(DioException error) : super(error: error);
}
