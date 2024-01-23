import 'package:chatgpt/screens/chat_screen.dart';
import 'package:chatgpt/screens/log_in_screen.dart';
import 'package:flutter/material.dart';

class IntroScreen2 extends StatefulWidget {
  const IntroScreen2({super.key});

  @override
  State<IntroScreen2> createState() => _IntroScreen2State();
}

class _IntroScreen2State extends State<IntroScreen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset('lib/assets/chatgpt2.jpg')),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 10, right: 10),
                    child: Column(
                      children: [
                        const Text(
                          'How does ChatGPT work ?',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'ChatGPT works through its Generative Pre-trained Transformer, which uses specialized algorithms to find patterns within data sequences. ChatGPT originally used the GPT-3 large language model, a neural network machine learning model and the third generation of Generative Pre-trained Transformer. The transformer pulls from a significant amount of data to formulate a response.',
                          style: TextStyle(
                              fontSize: 14, color: Colors.blue.shade300),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 60, right: 60, top: 20, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const LogInScreen();
                              }));
                            },
                            child: const Text('Log in')),
                      ],
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const ChatScreen();
                        }));
                      },
                      child: const Text('Get Started')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
