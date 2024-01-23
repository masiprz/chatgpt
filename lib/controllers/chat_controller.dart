import 'package:chatgpt/models/chat_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ChatController extends GetxController {
  RxList<ChatModel> texts = <ChatModel>[].obs;

  @override
  void onInit() {
    var box = GetStorage();

    if (box.read('texts') != null) {
      var list = box.read('texts');
      for (var item in list) {
        texts.add(ChatModel.fromJson(item));
      }
    }
    ever(texts, (value) {
      box.write('texts', texts.toJson());
    });

    super.onInit();
  }
}
