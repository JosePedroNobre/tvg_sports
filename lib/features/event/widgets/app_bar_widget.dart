import 'package:flutter/material.dart';
import 'package:tvg_sports/constants/custom_colors.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final Widget? bottomContent;
  final double appBarHeight;

  const AppBarWidget({Key? key, this.bottomContent, this.appBarHeight = 40}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      bottom: bottomContent as PreferredSizeWidget?,
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(top: 15, left: 15),
        child: Image.asset('assets/icons/ic_tvg.png', height: 33),
      ),
      backgroundColor: CustomColors.toolbarColor,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);
}
