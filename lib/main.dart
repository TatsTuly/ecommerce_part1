import 'package:flutter/material.dart';

import 'screens/home/pages/home.dart';

void main() {
  runApp(const Freebeis());
}

class Freebeis extends StatelessWidget {
  const Freebeis({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FreeBeis E-com',
      home: Home(),
    );
  }
}
