import "package:flutter/material.dart";
import "package:couldai_user_app/platform_card.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> platforms = [
      "Instagram",
      "Facebook",
      "X (Twitter)",
      "TikTok",
      "LinkedIn",
      "Bluesky",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Unified Social Analytics Dashboard"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 3 / 2,
        ),
        itemCount: platforms.length,
        itemBuilder: (context, index) {
          return PlatformCard(platformName: platforms[index]);
        },
      ),
    );
  }
}
