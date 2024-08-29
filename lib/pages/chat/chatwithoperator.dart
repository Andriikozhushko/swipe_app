import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/font.dart';

class ChatWithOperator extends StatefulWidget {
  const ChatWithOperator({Key? key}) : super(key: key);

  @override
  ChatWithOperatorState createState() => ChatWithOperatorState();
}

class ChatWithOperatorState extends State<ChatWithOperator> {
  final TextEditingController _messageController = TextEditingController();
  final List<Map<String, dynamic>> _messages = [];

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 1), () {
      _addMessage(
        isMine: false,
        text: 'Здравствуйте, вас приветствует техническая поддержка',
        textStyle: chatText1,
      );
    });
    Future.delayed(const Duration(seconds: 3), () {
      _addMessage(
        isMine: false,
        text: 'Расскажите о вашей проблеме',
        textStyle: chatText1,
      );
    });
  }

  void _addMessage({
    required bool isMine,
    required String text,
    required TextStyle textStyle,
  }) {
    setState(() {
      _messages.add({'text': text, 'isMine': isMine, 'textStyle': textStyle});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whitef5,
        leading: IconButton(
          icon: Image.asset('assets/img/chevron-down.png'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Обратная связь',
          style: appBarInfoPageText,
        ),
        titleSpacing: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: Image.asset('assets/img/x-circle.png'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: false,
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                final isMine = message['isMine'] == true;
                final textStyle = message['textStyle'] as TextStyle?;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Align(
                    alignment:
                        isMine ? Alignment.centerRight : Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        constraints: const BoxConstraints(
                          maxWidth: 210.0,
                        ),
                        margin: const EdgeInsets.only(top: 8.0),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: isMine ? blueaccent : Colors.grey[300],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          message['text'] as String,
                          style: textStyle ?? const TextStyle(color: black),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 60,
            color: whitef1,
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/img/paperclip.png',
                    width: 24,
                    height: 24,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 36,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      controller: _messageController,
                      decoration: const InputDecoration(
                        hintText: 'Введите ваше сообщение',
                        hintStyle: chatTextField1,
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 12.5, horizontal: 3),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        gradientgreenlight1,
                        gradientgreenlight2,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      final messageText = _messageController.text.trim();
                      if (messageText.isNotEmpty) {
                        _addMessage(
                          isMine: true,
                          text: messageText,
                          textStyle: const TextStyle(color: white),
                        );
                        _messageController.clear();
                      }
                    },
                    icon: Image.asset(
                      'assets/img/sendmessegeicon.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }
}
