import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galery'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        padding: EdgeInsets.all(10),
        children: List.generate(102, (index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1641239844090-fa80f6dd6ea6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
                fit: BoxFit.cover,
              ),
            ),
            margin: EdgeInsets.all(4),
          );
        }),
      ),
    );
  }
}
