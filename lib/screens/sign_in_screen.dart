// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(' Sign In '),
          centerTitle: true,
          shape: const RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(20)))),
      body: Container(
        width: double.infinity,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Create you account'),
            MyTextFeildWidget(
                hintText: 'Email',
                suffixIcon: Icon(
                  Icons.login,
                  size: 20,
                ),
                prefixIcone: Icon(
                  Icons.mail,
                  size: 20,
                )),
            SizedBox(height: 40),
            MyTextFeildWidget(
              hintText: 'PassWord',
              suffixIcon: Icon(
                Icons.remove_red_eye,
                size: 20,
              ),
              prefixIcone: Icon(
                Icons.lock,
                size: 20,
              ),
            ),
            SizedBox(height: 40),
            MyTextFeildWidget(
              hintText: 'confirm PassWord',
              suffixIcon: Icon(
                Icons.remove_red_eye,
                size: 20,
              ),
              prefixIcone: Icon(
                Icons.lock,
                size: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyTextFeildWidget extends StatelessWidget {
  final String? hintText;
  final Icon suffixIcon;
  final Icon prefixIcone;

  const MyTextFeildWidget({
    required this.hintText,
    required this.suffixIcon,
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
          cursorColor: Colors.grey.shade500,
          decoration: InputDecoration(
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade900),
            ),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade900)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade900)),
            hintText: hintText,
            prefixIcon: prefixIcone,
            suffixIcon: suffixIcon,
          ),
        ),
      ),
    );
  }
}
