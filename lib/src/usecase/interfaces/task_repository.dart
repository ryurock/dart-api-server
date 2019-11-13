import 'package:appserver/src/domain/task.dart';

class TaskRepository {
  store(Task task)    => throw Exception('store interface method');
  findById(Task task) => throw Exception('findById interface method');
  findAll() =>  throw Exception('findAll interface method');
  findEachSlice(int numberSplit) =>  throw Exception('findEachSlice interface method');
}