import 'package:flutter/material.dart';
import 'package:tvg_sports/constants/styles.dart';

class CircularWidget extends StatelessWidget {
  final String title;
  final String division;
  const CircularWidget({super.key, required this.title, required this.division});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54,
      height: 54,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFE7F4F8),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: inter(fontWeight: FontWeight.w400, fontSize: 12, color: Colors.black),
            ),
            Text(
              division,
              style: inter(fontWeight: FontWeight.w700, fontSize: 14, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
