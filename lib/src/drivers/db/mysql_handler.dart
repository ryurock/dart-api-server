import 'dart:html';

import 'package:appserver/src/adapter/db/sql_handler.dart';
import 'package:mysql1/mysql1.dart';

class DBMySQLHandler implements DBSQLHandler {
  MySqlConnection _conn;
  DBMySQLHandler() {
    _newSQLHandler();
  }

  _newSQLHandler() async {
    var settings = new ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      password: 'root',
      db: 'mydb'
    );
    this._conn = await MySqlConnection.connect(settings);
  }

  @override
  Future<DBMySQLResult> execute(String statement, List opts) async {
    DBMySQLResult response;
    Results results = await this._conn.query(statement, opts);
    response.results = results;
    return response;
  }

  @override
  Future<DBMySQLRow> query(String statement, List opts) async {
    DBMySQLRow row;
    Results rows = await this._conn.query(statement, opts);
    row.rows = rows;
    return row;
  }
}

class DBMySQLResult implements DBSQLResult {
  Results _results;
  DBMySQLResult();
  get results => _results;
  set results(Results results) => this._results = results;
  @override
  lastInsertId() {
    // TODO: implement lastInsertId
    return null;
  }
  @override
  rowsAffected() {
    // TODO: implement rowsAffected
    return null;
  }
}

class DBMySQLRow implements DBSQLRow {
  Results _rows;
  get rows => _rows;
  set rows(Results rows) => this._rows = rows;

  @override
  scan(results) {
    // TODO: implement scan
    return null;
  }
  @override
  bool next() {
    // TODO: implement next
    return null;
  }
  @override
  close() {
    // TODO: implement close
    return null;
  }
}