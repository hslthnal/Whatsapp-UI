import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_whatsapp/models/chat.dart';
import 'package:ui_whatsapp/style/theme.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (context, index) {
          final chat = chatList[index];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(
                  chat.image,
                  fit: BoxFit.cover,
                  width: 58,
                  height: 58,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              chat.name,
                              style: customTextStyle,
                            ),
                            Text(chat.messageDate),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          chat.mostRecentMessage,
                          style: const TextStyle(
                              color: Colors.black45, fontSize: 16.0),
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
