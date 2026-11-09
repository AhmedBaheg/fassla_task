import 'package:fassla_task/features/cart/views/cart_view.dart';
import 'package:flutter/material.dart';

import 'core/shared_widgets/app_bottom_navigation_bar.dart';
import 'features/explore/views/explore_view.dart';
import 'features/product/views/product_home_view.dart';
import 'features/profile/views/profile_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _ProductViewState();
}

class _ProductViewState extends State<HomeView> {
  int currentIndex = 0;
  List<Widget> pages = [
    ProductHomeView(),
    ExploreView(),
    CartView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: AppBottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: pages.elementAt(currentIndex),
      ),
    );
  }
}
