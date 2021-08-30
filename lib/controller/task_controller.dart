import 'package:get/get.dart';
import 'package:startwithgetx/model/task_model.dart';
import 'package:startwithgetx/service/task_service.dart';

class TaskController extends GetxController{

  final taskService = TaskService();
  var result = <TaskModel>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() async{
    // TODO: implement onInit
    super.onInit();
    isLoading.value = true;
    result.assignAll(await taskService.getAllTask() );
    isLoading.value=false;
  }
}