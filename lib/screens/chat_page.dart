import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<String> messages = [""];
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: messages.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    messages[index],
                    style: TextStyle(
                        backgroundColor: Colors.blue,
                        color: Colors.white,
                        fontSize: 20.0),
                  ),
                ),
              );
            },
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: TextField(
              onSubmitted: (value) {
                setState(() {
                  messages.add(controller.text.toString());
                });
              },
              controller: controller,
            ),
          ),
        )
      ],
    );
  }
}
