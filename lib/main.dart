import 'package:flutter/material.dart';
import 'package:frinded_chat/app.dart';
import 'package:frinded_chat/screens/screens.dart';
import 'package:frinded_chat/theme.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';

void main() {
  final client = StreamChatClient(streamKey);

  runApp(
    MyApp(
      client: client,
    ),
  );
}

class MyApp extends StatelessWidget {
  final StreamChatClient client;

  const MyApp({
    Key? key,
    required this.client,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Friended Chat',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.dark,
      builder: (context, child){
        return StreamChatCore(
            client: client,
            child: child!);
      },
      home: const SelectUserScreen(),
    );
  }
}
