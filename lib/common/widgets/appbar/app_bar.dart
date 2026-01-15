import 'package:flutter/material.dart';
import 'package:music_app/common/helpers/is_dark.dart';

class BasicAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;

  const BasicAppBar({this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: title ?? const Text(''),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: context.isDarkMode
                ? Colors.white.withAlpha(26)
                : Colors.black.withAlpha(13),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 16,
            color: context.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
