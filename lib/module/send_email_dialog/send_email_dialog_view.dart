import 'package:flutter/material.dart';

void createSendEmailDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) => _SendEmailDialogView(),
  );
}

class _SendEmailDialogView extends StatefulWidget {
  @override
  _SendEmailDialogViewState createState() => _SendEmailDialogViewState();
}

class _SendEmailDialogViewState extends State<_SendEmailDialogView> {
  void _emailSendClick() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber[200],
      child: Center(
        child: FlatButton(
          child: Text('email Send'),
          onPressed: _emailSendClick,
        ),
      ),
    );
  }
}
