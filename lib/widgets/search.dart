import 'package:flutter/material.dart';
import 'package:frinded_chat/theme.dart';

class Search extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;

  const Search({Key? key, required this.onTap, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).cardColor,
      borderRadius: BorderRadius.circular(6),
      child: InkWell(
        splashColor: AppColors.secondary,
        onTap: onTap,
        child: Icon(
          icon,
          size: 18,
        ),
      ),
    );
  }
}
