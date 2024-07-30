import 'package:equatable/equatable.dart';

abstract class TaskEntity extends Equatable {
  final String? id;
  final String? title;
  final String? description;
  final bool? isCompleted;
  final String? image;
  final String? createdAt;
  final String? updatedAt;

  const TaskEntity({
    this.id,
    this.title,
    this.description,
    this.isCompleted,
    this.image,
    this.createdAt,
    this.updatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        isCompleted,
        image,
        createdAt,
        updatedAt,
      ];
}
