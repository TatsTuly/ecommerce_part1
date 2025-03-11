import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../common/widget/appbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppBar(
        title: "Mega Dokan",
        firsticon: Iconsax.notification_bing_outline,
      ),
    );
  }
}
