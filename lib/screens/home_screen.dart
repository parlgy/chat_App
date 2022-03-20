import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frinded_chat/helpers.dart';
import 'package:frinded_chat/pages/pages.dart';
import 'package:frinded_chat/theme.dart';
import 'package:frinded_chat/widgets/avatar.dart';
import 'package:frinded_chat/widgets/glowing_action_button.dart';
import 'package:frinded_chat/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  final ValueNotifier<int> pageIndex = ValueNotifier(0);
  final ValueNotifier<String> title = ValueNotifier('Messages');

  HomeScreen({Key? key}) : super(key: key);

  final pages = const [
    MessagePage(),
    ConnectionsPage(),
    ExplorePage(),
    ProfilePage(),
  ];

  final pageTitles = const [
    'Messages',
    'Connections',
    'Explore',
    'Profile',
  ];

  void _onNavigationItemSelected(index) {
    title.value = pageTitles[index];
    pageIndex.value = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        leading: Center(
          child: Search(
              icon: Icons.search,
              onTap: () {
                // TODO:
              }),
        ),
        // leadingWidth: ,
        title: ValueListenableBuilder(
          valueListenable: title,
          builder: (BuildContext context, String value, _) {
            return Text(
              value,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.orange,
                fontSize: 16,
              ),
            );
          },
        ),
        actions: [
          Avatar.small(
            url: Helpers.randomPictureUrl(),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: pageIndex,
        builder: (BuildContext context, int value, _) {
          return pages[value];
        },
      ),
      bottomNavigationBar: _BottomNavigationBar(
        onItemSelected: _onNavigationItemSelected,
      ),
    );
  }
}

class _BottomNavigationBar extends StatefulWidget {
  final ValueChanged<int> onItemSelected;

  const _BottomNavigationBar({
    Key? key,
    required this.onItemSelected,
  }) : super(key: key);

  @override
  State<_BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<_BottomNavigationBar> {
  var selectedIndex = 0;

  void hundleItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
    widget.onItemSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;

    return Card(
      color: (brightness == Brightness.light) ? Colors.transparent : null,
      margin: const EdgeInsets.all(0),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0, left: 8, right: 8, bottom: 10),
        child: SafeArea(
          top: false,
          bottom: true,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavigationBarItem(
                index: 0,
                label: 'Messages',
                icon: CupertinoIcons.bubble_left_bubble_right_fill,
                onTap: hundleItemSelected,
                isSelected: (selectedIndex == 0),
              ),
              NavigationBarItem(
                index: 1,
                label: 'Connections',
                icon: CupertinoIcons.bell_solid,
                onTap: hundleItemSelected,
                isSelected: (selectedIndex == 1),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GlowingActionButton(color: AppColors.secondary, icon: CupertinoIcons.add, onPressed: (){
                //  TODO:
                },),
              ),
              NavigationBarItem(
                index: 2,
                label: 'Explore',
                icon: CupertinoIcons.search,
                onTap: hundleItemSelected,
                isSelected: (selectedIndex == 2),
              ),
              NavigationBarItem(
                index: 3,
                label: 'Profile',
                icon: CupertinoIcons.person_2_fill,
                onTap: hundleItemSelected,
                isSelected: (selectedIndex == 3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavigationBarItem extends StatelessWidget {
  final String label;
  final IconData icon;
  final int index;
  final bool isSelected;
  final ValueChanged<int> onTap;

  const NavigationBarItem({
    Key? key,
    required this.label,
    required this.icon,
    required this.index,
    required this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        onTap(index);
      },
      child: SizedBox(
        width: 80,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 20,
              color: isSelected ? AppColors.secondary : null,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              label,
              style: isSelected
                  ? const TextStyle(
                      color: AppColors.secondary,
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    )
                  : const TextStyle(fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }
}
