import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final Widget child;

  const ContainerWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: child,
    );
  }
}