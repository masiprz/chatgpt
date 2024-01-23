// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Log In',
            style: TextStyle(color: Colors.blue.shade300),
          ),
          centerTitle: true,
          shape: const RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(20)))),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Create your account',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade300,
                )),
            const SizedBox(height: 50),
            const MyTextFeildWidget(
                hintText: 'Phone Number',
                prefixIcone: Icon(Icons.phone_android)),
          ],
        ),
      ),
    );
  }
}

class MyTextFeildWidget extends StatelessWidget {
  final String? hintText;

  final Icon prefixIcone;

  const MyTextFeildWidget({
    required this.hintText,
    super.key,
    required this.prefixIcone,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: TextField(
          controller: textEditingController,
          cursorColor: Colors.blue.shade900,
          decoration: InputDecoration(
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade900),
            ),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade900)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade900)),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.blue.shade200),
            prefixIcon: prefixIcone,
            prefixIconColor: Colors.blue.shade200,
          ),
        ),
      ),
    );
  }
}
