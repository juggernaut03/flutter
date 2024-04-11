import 'package:demoapp/components/dialog.dart';
import 'package:flutter/material.dart';

class MyList extends StatelessWidget {

  const MyList({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body:    ListView.separated(
      itemCount: 15,
      itemBuilder: (context, int index) {
      return ListTile(
            title: const Text("Diaglog Widget"),
            tileColor: Colors.amber,
            onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyDialog(),
              ),
            );
            },
            leading: const Icon(Icons.widgets),
            trailing: const Icon(Icons.menu),
      );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(
        color: Colors.white,
      ),
    )
    );
  }
}