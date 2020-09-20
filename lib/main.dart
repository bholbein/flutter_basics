import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'List',
        home: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.menu),
            title: Text('Bug Report'),
            backgroundColor: Colors.blueGrey,
          ),
          body: ListView(
            children: [
              for (int i = 1; i <= 30; i++)
                Card(
                    elevation: 5.0,
                    color: Colors.redAccent,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          leading: Icon(Icons.bug_report, size: 50),
                          title: Text('Bug Nr $i'),
                          subtitle: Text('This is a bug.'),
                          onTap: () => print('Pressed: Nr.: $i'),
                        )
                      ],
                    ))
            ],
          ),
        ));
  }
}
