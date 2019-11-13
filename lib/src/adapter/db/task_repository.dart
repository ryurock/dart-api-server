import 'package:appserver/src/adapter/db/sql_handler.dart';
import 'package:appserver/src/domain/task.dart';
import 'package:appserver/src/drivers/db/mysql_handler.dart';

class TaskDBRepository {
  DBSQLHandler _sqlHandler;
  TaskDBRepository(this._sqlHandler);

  store(Task task) {
    String statement = '''
    INSERT INTO tasks
      (title, description, created_at, updated_at)
    VALUES (?, ?, ?, ?)
    ''';
    List prepare = [ task.title, task.description, task.createdAt, task.updatedAt ];
    this._sqlHandler.execute(statement, prepare);
  }
}