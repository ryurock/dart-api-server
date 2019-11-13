import 'package:appserver/src/domain/task.dart';
import 'package:appserver/src/usecase/interfaces/task_repository.dart';

class TaskInteractor {
  TaskRepository _taskRepository;
  TaskInteractor(TaskRepository this._taskRepository);

  add(Task task) {
    this._taskRepository.store(task);
  }

  tasks() {
    this._taskRepository.findAll();
  }

  taskById(Task task) {
    this._taskRepository.findById(task);
  }

  taskEachSlice(int numberSplit) {
    this._taskRepository.findEachSlice(numberSplit);
  }
}