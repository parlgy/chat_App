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

class IconBorder extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const IconBorder({Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(6),
      splashColor: AppColors.secondary,
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            width: 2,
            color: Theme.of(context).cardColor,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Icon(icon,size: 16,),
        ),
      ),
    );

  }
}
