import 'package:flutter/material.dart';

void main() => runApp(const AlertDialogExampleApp());

class AlertDialogExampleApp extends StatelessWidget {
  const AlertDialogExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello Sadik Saroar"),
        ),
        body: const Center(
          child: DialogExample(),
        ),
      ),
    );
  }
}

class DialogExample extends StatefulWidget {
  const DialogExample({super.key});

  @override
  State<DialogExample> createState() => _DialogExampleState();
}

class _DialogExampleState extends State<DialogExample> {
  @override
  Widget build(BuildContext context) {
    return  TextButton(
        onPressed: () => showDialog <String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text("Alrt dialog"),
            content: const Text("AlertDialog depr"),
            actions: <Widget>[
              TextButton(onPressed: () => Navigator.pop(context, 'Chancel'), child: const Text('Cancel')),
              TextButton(onPressed: () => Navigator.pop(context, 'ok'), child: const Text('ok'))
            ],
          )
        ), child: const Text('show dialog'));
  }
}
