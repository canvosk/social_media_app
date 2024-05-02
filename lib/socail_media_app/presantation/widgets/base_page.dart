import 'package:flutter/material.dart';
import 'package:social_media_app/config/constants/assets.dart';

class BasePage extends StatelessWidget {
  final Widget content;
  const BasePage({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsPaths.bgImage),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: content,
        ),
      ),
    );
  }
}
