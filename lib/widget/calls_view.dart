import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_whatsapp/style/theme.dart';

import '../models/calls.dart';

class CallsView extends StatelessWidget {
  const CallsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callsList.length, 
      itemBuilder: (context, index) {
      final calls = callsList[index];
      return ListTile(
        leading: Icon(Icons.account_circle, color: Colors.black, size: 58,),
        title: Text(calls.name),
        subtitle: Text(calls.CallsDate),
        trailing: Icon(Icons.call, color: whatsAppLightGreen,),
      );
      }
      );
  }
}