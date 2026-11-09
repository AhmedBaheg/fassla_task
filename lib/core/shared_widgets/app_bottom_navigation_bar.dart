import 'package:fassla_task/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/app_colors.dart';

class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({
    super.key,
    this.onTap,
    required this.currentIndex,
  });

  final ValueChanged<int>? onTap;
  final int currentIndex;

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backgroundCanvasLight,
        border: Border(top: BorderSide(color: Color(0xFFE5EAF2), width: 0.7)),
      ),
      child: BottomNavigationBar(
        currentIndex: widget.currentIndex,
        onTap: (index) {
          widget.onTap!(index);
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.backgroundCanvasLight,
        elevation: 0,

        selectedItemColor: AppColors.actionPrimaryLight,
        unselectedItemColor: const Color(0xFF64748B),

        selectedLabelStyle: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),

        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppStrings.homeIcon,
              color: widget.currentIndex == 0
                  ? AppColors.actionPrimaryLight
                  : AppColors.icons,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppStrings.searchIcon,
              color: widget.currentIndex == 1
                  ? AppColors.actionPrimaryLight
                  : AppColors.icons,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppStrings.cartIcon,
              color: widget.currentIndex == 2
                  ? AppColors.actionPrimaryLight
                  : AppColors.icons,
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppStrings.profileIcon,
              color: widget.currentIndex == 3
                  ? AppColors.actionPrimaryLight
                  : AppColors.icons,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
