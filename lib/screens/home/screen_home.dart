import 'package:flutter/material.dart';
import 'package:money_management_system/screens/category/screen_category.dart';
import 'package:money_management_system/screens/home/widgets/bottom_navigation.dart';
import 'package:money_management_system/screens/transactions/screen_transaction.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});
  final _pages = const[
    ScreenTransaction(),
    ScreenCategory(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Money Management System'),
        centerTitle: true,
      ),
      bottomNavigationBar: MoneyManagementBottomNavigation(),
      body: SafeArea(child: ValueListenableBuilder(
        valueListenable: selectedIndexNotifier,
        builder: (context, updatedIndex, child) {
          return _pages[updatedIndex];
        }
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(selectedIndexNotifier.value==0){
            print('Add Transaction');
          }else{
            print('Add Category');
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}