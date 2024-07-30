import 'dart:io';
import 'package:dio/dio.dart';
import 'package:todo_list_app/core/resources/data_state.dart';
import 'package:todo_list_app/data/models/task/task.dart';
import 'package:todo_list_app/data/sources/task/task_api_service.dart';
import 'package:todo_list_app/domain/repository/task/task_repo.dart';

class TaskRepoImpl implements TaskRepo {
  final TaskApiService _taskApiService;
  TaskRepoImpl(this._taskApiService);

  @override
  Future<DataState<List<TaskModel>>> getTasks() async {
    try {
      final httpResponse = await _taskApiService.getTasks();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(
          DioException(
            requestOptions: httpResponse.response.requestOptions,
            error: httpResponse.response.statusMessage,
            response: httpResponse.response.data,
            type: DioExceptionType.badResponse,
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
