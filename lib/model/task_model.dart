class TaskModel{
  late int id;
  late String name;
  late String description;
  late bool archive;

  TaskModel({required this.id, required this.name, required this.description, required this.archive});

  TaskModel.fromJson(dynamic json){
    this.id = json['id'];
    this.name = json['name'];
    this.description = json['description'];
    this.archive = json['archive'];
  }

}