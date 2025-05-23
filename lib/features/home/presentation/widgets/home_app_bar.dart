import 'package:books/core/utils/app_images.dart';
import 'package:books/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30.0,
        right: 20.0,
        top: 35.0,
        bottom: 20.0,
      ),
      child: Row(
        children: [
          Image.asset(AppImages.appLogo, height: 24.0),
          const Spacer(),
          // Search Icon
          IconButton(
            onPressed: () {
              GoRouter.of(
                context,
              ).push(AppRouter.kSearchView); // Navigate to Search View
            },
            icon: Icon(FontAwesomeIcons.magnifyingGlass, size: 22.0),
          ),
        ],
      ),
    );
  }
}
