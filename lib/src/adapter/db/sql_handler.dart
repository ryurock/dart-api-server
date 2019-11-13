class DBSQLHandler {
  // insert
  execute(String statement, List opts) => throw Exception('method execute interface');
  // select
  query(String statement, List opts) => throw Exception('method query interface');
}

class DBSQLResult {
  lastInsertId() => throw Exception('method lastInsertId interface');
  rowsAffected() => throw Exception('method rowsAffected interface');
}

class DBSQLRow {
  scan(results) => throw Exception('method scan interface');
  bool next() => throw Exception('method next interface');
  close() => throw Exception('method rowsAffected interface');
}