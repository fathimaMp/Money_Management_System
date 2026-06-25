import 'package:flutter/material.dart';

class IncomeCategoryList extends StatelessWidget {
  const IncomeCategoryList({super.key});

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
            title: Text('Income Category ${index + 1}'),
            subtitle: Text('Details of income category ${index + 1}'),
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