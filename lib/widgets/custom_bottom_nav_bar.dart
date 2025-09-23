import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:notes/utils/app_colors.dart';
import 'package:notes/utils/app_text_styles.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  final List<String> _titles = const ["Explore", "Notes", "Tasks"];

  final List<String> activeIcons = const [
    'assets/icons/active_home.svg',
    'assets/icons/active_notes.svg',
    'assets/icons/active_tasks.svg',
  ];

  final List<String> inactiveIcons = const [
    'assets/icons/inactive_home.svg',
    'assets/icons/inactive_notes.svg',
    'assets/icons/inactive_tasks.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
        color: AppColors.bottomAppBarColor,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(_titles.length, (index) {
          final bool isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () => onItemTapped(index),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AnimatedContainer(
                  width: 64,
                  height: 32,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeOut,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: isSelected
                        ? AppColors.bottomAppBarSecondaryColor
                        : Colors.transparent,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      isSelected ? activeIcons[index] : inactiveIcons[index],
                      width: isSelected ? 28 : 24,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeOut,
                  style: AppTextStyles.regular12.copyWith(
                    color: isSelected ? Colors.black : Colors.grey[400],
                    fontWeight: isSelected
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                  child: Text(_titles[index]),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
