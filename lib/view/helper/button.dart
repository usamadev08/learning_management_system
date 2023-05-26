import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Widget child;

  const MyContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width / 3,
      child: child,
      decoration: BoxDecoration(
          color: Color(0xff004040), borderRadius: BorderRadius.circular(15)),
    );
  }
}
