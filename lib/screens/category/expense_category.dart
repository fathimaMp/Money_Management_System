import 'package:flutter/material.dart';

class ExpenseCategoryList extends StatelessWidget {
  const ExpenseCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(10),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          elevation: 0,
          child: ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.attach_money),
            ),
            title: Text('Expense Category ${index + 1}'),
            subtitle: Text('Details of expense category ${index + 1}'),
            trailing: IconButton(
              onPressed: () {
                // ignore: avoid_print
                print("hi");
              },
              icon: Icon(Icons.delete),
            ),
          ),
        );
      },
      separatorBuilder: (ctx, index) {
        return SizedBox(height: 10,);
      },
    );
  }
}