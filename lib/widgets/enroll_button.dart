import 'package:flutter/material.dart';

class EnrollButton extends StatelessWidget {
  final String tiTle;
  final VoidCallback? onTap;
  const EnrollButton({super.key, required this.tiTle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.lightBlue.shade600,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        tiTle,
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}
