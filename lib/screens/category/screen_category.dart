import 'package:flutter/material.dart';
import 'package:money_management_system/screens/category/expense_category.dart';
import 'package:money_management_system/screens/category/income_category_list.dart';

class ScreenCategory extends StatefulWidget {
  const ScreenCategory({super.key});

  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  @override
  State<ScreenCategory> createState() => _ScreenCategoryState();
}

class _ScreenCategoryState extends State<ScreenCategory>with SingleTickerProviderStateMixin {
  late TabController  _tabController;

  @override
void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Income'),
            Tab(text: 'Expense'),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const [
              IncomeCategoryList(),
              ExpenseCategoryList(),
            ],
          ),
        ),
      ],
    );
  }
}