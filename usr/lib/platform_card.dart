import "package:flutter/material.dart";

class PlatformCard extends StatelessWidget {
  final String platformName;

  const PlatformCard({super.key, required this.platformName});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Text(
          platformName,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
