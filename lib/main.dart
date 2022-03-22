import 'package:flutter/material.dart';
import 'package:frinded_chat/app.dart';
import 'package:frinded_chat/screens/screens.dart';
import 'package:frinded_chat/theme.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  final client = StreamChatClient(streamKey);

  runApp(
    MyApp(
      client: client,
      appTheme: AppTheme(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.client,
    required this.appTheme,
  }) : super(key: key);

  final StreamChatClient client;
  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme.light,
      darkTheme: appTheme.dark,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      title: 'Chatter',
      builder: (context, child) {
        return StreamChatCore(
          client: client,
          child: ChannelsBloc(
            child: UsersBloc(
              child: child!,
            ),
          ),
        );
      },
      home: const SelectUserScreen(),
    );
  }
}