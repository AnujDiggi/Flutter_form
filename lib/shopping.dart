import 'package:flutter/material.dart';
import 'package:login_signup/Home.dart';

// ----------------------------------- Shopping Page --------------------------------------

class Shopping extends StatelessWidget {
   const Shopping({super.key});

   @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Shopping',
        home: MyShoppingPage(title:'Shopping'),
    );
  }
}

class MyShoppingPage extends StatefulWidget {
  const MyShoppingPage({super.key, required this.title});

  final String title;

  @override
  State<MyShoppingPage> createState() => _MyShoppingPageState();
}

class _MyShoppingPageState extends State<MyShoppingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Home()));
        },
        child: const Text(
          "Signup",
          textAlign: TextAlign.center,
        ),
      ), 
    );
  }
}
