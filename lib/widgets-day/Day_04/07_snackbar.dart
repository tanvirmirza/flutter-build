import 'package:flutter/material.dart';

class KSnackBar extends StatelessWidget {
  const KSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      body: Center(
        child: OutlinedButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                
                content: Text('Do you want to undo?'),
                duration: Duration(seconds: 2),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {},
                ),
              ));
            },
            icon: Icon(Icons.checklist),
            label: Text('SnackBar')),
      ),
    );
  }
}
