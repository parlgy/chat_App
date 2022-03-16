import 'package:flutter/material.dart';
import 'package:frinded_chat/theme.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.textFaded.withOpacity(0.4),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Icon(
        Icons.search,
        size: 25,
      ),
    );
  }
}
