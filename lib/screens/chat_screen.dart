import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frinded_chat/helpers.dart';
import 'package:frinded_chat/models/message_data.dart';
import 'package:frinded_chat/theme.dart';
import 'package:frinded_chat/widgets/widgets.dart';

class ChatScreen extends StatelessWidget {
  final MessageData messageData;

  const ChatScreen({
    Key? key,
    required this.messageData,
  }) : super(key: key

  );

  static Route route(MessageData data) => MaterialPageRoute(
        builder: (context) => ChatScreen(
          messageData: data,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: false,
        leadingWidth: 54,
        leading: Align(
            alignment: Alignment.centerRight,
            child: Search(
              icon: CupertinoIcons.back,
              onTap: () {
                Navigator.of(context).pop();
              },
            )),
        // leadingWidth: ,
        title: _AppBarTitle(
          messageData: messageData,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Center(
              child: IconBorder(
                icon: CupertinoIcons.video_camera_solid,
                onTap: () {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Center(
              child: IconBorder(
                icon: CupertinoIcons.phone_solid,
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
      body: _DemoMessageList(),
    );
  }
}

class _DemoMessageList extends StatelessWidget {
  const _DemoMessageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView(
        children: const [
          _DateLabel(label: 'Yesterday'),
          _MessageTile(
            message: "Hi buddy, How\'s your day ",
            messageDate: "12:01pm",
          ),
          _MessageOwnTile(
              message: "You know how it goes...", messageDate: "12:02pm"),
          _MessageTile(message: "Can we go now?", messageDate: "12:03pm"),
          _MessageOwnTile(message: "would be awsome", messageDate: "12:03pm"),
          _MessageTile(message: "Comming up", messageDate: "12:04pm"),
          _MessageOwnTile(message: "Yaayyyy", messageDate: "12:03pm"),
        ],
      ),
    );
  }
}

class _MessageTile extends StatelessWidget {
  final String message;
  final String messageDate;

  const _MessageTile({
    Key? key,
    required this.message,
    required this.messageDate,
  }) : super(key: key);
  static const _borderRadius = 26.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(_borderRadius),
                  topRight: Radius.circular(_borderRadius),
                  bottomRight: Radius.circular(_borderRadius),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                child: Text(
                  message,
                  style: const TextStyle(color: AppColors.textLight),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                messageDate,
                style: const TextStyle(
                    color: AppColors.textFaded,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}



class _MessageOwnTile extends StatelessWidget {
  final String message;
  final String messageDate;


  const _MessageOwnTile({
    Key? key,
    required this.message,
    required this.messageDate,
  }) : super(key: key);
  static const _borderRadius = 26.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(_borderRadius),
                  bottomRight: Radius.circular(_borderRadius),
                  bottomLeft: Radius.circular(_borderRadius),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                child: Text(
                  message,
                  style: const TextStyle(color: AppColors.textLight),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                messageDate,
                style: const TextStyle(
                    color: AppColors.textFaded,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}



class _DateLabel extends StatelessWidget {
  final String label;
  const _DateLabel({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
            child: Text(label,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ),
      ),
    );
  }
}



class _AppBarTitle extends StatelessWidget {
  final MessageData messageData;
  const _AppBarTitle({
    Key? key,
    required this.messageData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Avatar.small(url: messageData.profilePicture),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                messageData.senderName,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 14,
                  // color: Colors.orange,
                ),
              ),
              const SizedBox(height: 2),
              const Text(
                "Online Now",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
