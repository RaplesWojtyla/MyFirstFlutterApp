import 'package:flutter/material.dart';

class HomePage extends StatelessWidget
{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Flutter!'),
      ),
      body: Center(
        child: HelloButton(),
      ),
    );
  }
}

class HelloButton extends StatelessWidget
{
  const HelloButton({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ElevatedButton(
      child: const Text(
        'Hello',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 35,
          color: Colors.black
        ),
      ),
      onPressed: () {
        action(context);
      },
    );
  }

  void action(BuildContext context)
  {
    var alertDialog = const AlertDialog(
      title: Text('Hello There!'),
      content: Text(
        'Hello, Wojtyla!',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontFamily: 'MarckScript',
          fontSize: 45,
        ),
      ),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      }
    );
  }
}