import 'package:flutter/material.dart';

class ScreenTransaction extends StatelessWidget {
  const ScreenTransaction({super.key});

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
              child: Icon(Icons.monetization_on),
            ),
            title: Text('Transaction ${index + 1}'),
            subtitle: Text('Details of transaction ${index + 1}'),
            trailing: Text('\$${(index + 1) * 10}'),
          ),
        );
      },
      separatorBuilder: (ctx, index) {
        return SizedBox(height: 10,);
      },
    );
    
  }
}