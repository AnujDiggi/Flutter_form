import 'package:flutter/material.dart';
import 'package:login_signup/Home.dart';

// --------------------------------- Music Page ----------------------------

class Music extends StatelessWidget {
   const Music({super.key});

   @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Shopping',
        home: MyMusicPage(title:'Shopping'),
    );
  }
}

class MyMusicPage extends StatefulWidget {
  const MyMusicPage({super.key, required this.title});

  final String title;

  @override
  State<MyMusicPage> createState() => _MyMusicPageState();
}

class _MyMusicPageState extends State<MyMusicPage> {
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
