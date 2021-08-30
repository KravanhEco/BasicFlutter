import 'dart:async';
import 'dart:io';

import 'package:get/get.dart';
import 'package:startwithgetx/model/task_model.dart';

class TaskService extends GetConnect{


  Future<List<TaskModel>> getAllTask() async{

      Response response = await get("https://ahkas-locator-server.herokuapp.com/api/v1/task/get-all").timeout(Duration(seconds: 10), onTimeout: () {
        // Time has run out, do what you wanted to do.
        print('timeout');
        return Response(statusCode: 500);
      });

      List<TaskModel> modelList = [];
      List<dynamic> result = response.body;
      result.forEach((data) {
        var taskModel = TaskModel.fromJson(data);
        modelList.add(taskModel);
    });

    return modelList;
  }

}