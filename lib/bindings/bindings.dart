import 'package:chatgpt/controllers/chat_controller.dart';
import 'package:chatgpt/controllers/textfeild_controller.dart';
import 'package:get/get.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatController());
    Get.put(TextFeildController());
  }
}
