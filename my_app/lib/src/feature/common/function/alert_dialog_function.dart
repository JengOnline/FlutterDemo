import 'package:alert_dialog/alert_dialog.dart';
import 'package:flutter/material.dart';

class AlertDialogHandle {
  showDialog(BuildContext context, String title, String content, String btnOk) {
    alert(
      context,
      title: Text(title),
      content: Text(content),
      textOK: Text(btnOk),
    );
  }
}
