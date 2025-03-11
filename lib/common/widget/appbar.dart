import 'package:ecommerce_part1/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class FAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FAppBar({
    super.key,
    required this.title,
    required this.firsticon,
    this.secondicon = HeroIcons.shopping_cart,
  });
  final String title;
  final IconData firsticon;
  final IconData secondicon;
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        title: Text(
          title,
          style: TextStyle(
            fontFamily: "DMSans",
            color: Fcolors.oceanBlue,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(20),
            child: Icon(
              firsticon,
              color: Colors.black,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Icon(
              secondicon,
              color: Colors.black,
            ),
          ),
        ],
        centerTitle: true);
  }
}
