import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_whatsapp/models/status.dart';

class StatusView extends StatelessWidget {
  const StatusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: statusList.length, 
      itemBuilder: (context, index) {
      final status = statusList[index];
      return ListTile(
        leading: Icon(
          Icons.account_circle,
          color: Colors.black,
          size: 58,
        ),
        title: Text(
          status.name
        ),
        subtitle: Text(
          status.statusDate
        ),
      );
    },
    );
  }
}