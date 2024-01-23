import 'package:chatgpt/screens/intro2_screen.dart';
import 'package:flutter/material.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset('lib/assets/image/chatgpt.jpg')),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(right: 20, left: 20),
              child: Column(
                children: [
                  const Text(
                    'What is ChatGPT?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'ChatGPT is a natural language processing tool driven by AI technology that allows you to have human-like conversations and much more with the chatbot. The language model can answer questions and assist you with tasks, such as composing emails, essays, and code.',
                    style: TextStyle(fontSize: 14, color: Colors.blue.shade300),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
              child: Row(
                children: [
                  ElevatedButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {},
                      child: const Text('back')),
                  const Spacer(),
                  ElevatedButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const IntroScreen2();
                        }));
                      },
                      child: const Text('next')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
