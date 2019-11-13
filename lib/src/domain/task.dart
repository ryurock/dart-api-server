class Task {
  int _id;
  String _title;
  String _description;
  DateTime _createdAt;
  DateTime _updatedAt;

  get id => _id;
  set id(int id) => this._id = id;

  get title => _title;
  set title(String title) => this._title = title;
  get description => _description;
  set description(String description) => this._description = description;
  get createdAt => _createdAt;
  set createdAt(DateTime createdAt) => this._createdAt = createdAt;
  get updatedAt => _updatedAt;
  set updatedAt(DateTime updatedAt) => this._updatedAt = updatedAt;

  Task(this._title);
}