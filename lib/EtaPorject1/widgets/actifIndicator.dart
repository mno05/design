import 'package:flutter/material.dart';

class ActifIndicator extends StatelessWidget {
  final double size;
  final Color color;
  const ActifIndicator({super.key, required this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size),
        color: color,
      ),
    );
  }
}
