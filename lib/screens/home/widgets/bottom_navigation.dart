import 'package:flutter/material.dart';
import 'package:money_management_system/screens/home/screen_home.dart';

final ValueNotifier<int> selectedIndexNotifier = ValueNotifier<int>(0);

class MoneyManagementBottomNavigation extends StatelessWidget {
  const MoneyManagementBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: selectedIndexNotifier,
      builder: (BuildContext context, int updatedIndex, Widget? _) {
        return BottomNavigationBar(
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
          currentIndex: updatedIndex,
          onTap: (newIndex) {
            selectedIndexNotifier.value = newIndex;
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Transactions'),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Categories')
          ],
        );
      },
    );
  }
}