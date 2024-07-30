import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:todo_list_app/data/repository/task/task_repo_impl.dart';
import 'package:todo_list_app/data/sources/task/task_api_service.dart';
import 'package:todo_list_app/domain/repository/task/task_repo.dart';
import 'package:todo_list_app/domain/usecases/task/get_task.dart';
import 'package:todo_list_app/presentation/task/bloc/task_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  //Dio
  sl.registerSingleton<Dio>(
    Dio(),
  );

  //Dependencies
  sl.registerSingleton<TaskApiService>(
    TaskApiService(sl()),
  );

  sl.registerSingleton<TaskRepo>(
    TaskRepoImpl(sl()),
  );

  //UseCases
  sl.registerSingleton<GetTaskUseCase>(
    GetTaskUseCase(sl()),
  );

  //Blocs
  sl.registerFactory<TaskBloc>(
    () => TaskBloc(sl()),
  );
}
