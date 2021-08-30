import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:startwithgetx/controller/task_controller.dart';

class TaskScreen extends StatelessWidget {

  final ctl = Get.put(TaskController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Task List"),),
        body:  Obx(()=> ctl.isLoading.value?Center(child: CircularProgressIndicator()): Container(
          child:ListView.builder(itemBuilder: (context,index){
            var data = ctl.result[index];
            return CheckboxListTile(title: Text(data.name),subtitle: Text(data.description), value: data.archive, onChanged: (bool? value) {  },);
          },
          itemCount: ctl.result.length,))));
  }
}
