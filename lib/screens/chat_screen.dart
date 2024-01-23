import 'package:chatgpt/controllers/chat_controller.dart';
import 'package:chatgpt/controllers/textfeild_controller.dart';
import 'package:chatgpt/models/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ChatGPT'),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.clear_all,
                  size: 35,
                )),
          ],
          centerTitle: true,
          backgroundColor: Colors.blue.shade500,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        ),
        body: Column(
          children: [
            Expanded(
              child: Obx(() {
                return ListView.builder(
                    itemCount: Get.find<ChatController>().texts.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade900,
                        ),
                        child: ListTile(
                          onTap: () {
                            Get.find<ChatController>().texts.removeAt(index);
                          },
                          title: Text(
                            Get.find<ChatController>().texts[index].text!,
                            style: TextStyle(color: Colors.blue.shade200),
                          ),
                          leading: Icon(
                            Icons.person,
                            color: Colors.blue.shade200,
                          ),
                        ),
                      );
                    });
              }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: Get.find<TextFeildController>().text,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          Get.find<ChatController>().texts.add(ChatModel(
                              text:
                                  Get.find<TextFeildController>().text!.text));
                        },
                        icon: Icon(
                          Icons.send,
                          size: 20,
                          color: Colors.blue.shade200,
                        )),
                    hintText: 'Type your message here ...',
                    hintStyle: TextStyle(color: Colors.blue.shade200),
                    border: InputBorder.none),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
