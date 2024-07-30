import 'package:todo_list_app/domain/entities/task/task.dart';

class TaskModel extends TaskEntity {
  const TaskModel({
    super.id,
    super.title,
    super.description,
    super.isCompleted,
    super.image,
    super.createdAt,
    super.updatedAt,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) {
    return TaskModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      isCompleted: json['isCompleted'],
      image: json['image'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }
}