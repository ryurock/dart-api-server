import 'package:appserver/src/usecase/interfaces/task_interactor.dart';

class TaskController {
  TaskInteractor _taskInteractor;
  TaskController.newTaskController(TaskInteractor taskInteractor)
    : this._taskInteractor = taskInteractor;
  create() {

  }
}