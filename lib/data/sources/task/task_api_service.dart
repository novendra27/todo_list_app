import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:todo_list_app/core/configs/contants/app_urls.dart';
import 'package:todo_list_app/data/models/task/task.dart';
part 'task_api_service.g.dart';

@RestApi(baseUrl: taskAPIBaseURL)
abstract class TaskApiService {
  factory TaskApiService(Dio dio) = _TaskApiService;

  @GET('/todos')
  Future<HttpResponse<List<TaskModel>>> getTasks();
}