import 'package:flutter/material.dart';
import 'package:login_signup/Home.dart';
import 'package:login_signup/login.dart';


// --------------------------- Signup Page------------------------------

class Signup extends StatelessWidget {
  const Signup({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MySignupPage(title: 'Signup'),
    );
  }
}

class MySignupPage extends StatefulWidget {
  const MySignupPage({super.key, required this.title});

  final String title;

  @override
  State<MySignupPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MySignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 175, 113, 204),
        title: Text(
          widget.title,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: const Text(
                  "Register",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                )),
            const Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "User Name",
                    hintText: "Enter Your Name"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                    hintText: 'Enter Your Email'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    hintText: 'Enter Password'),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Home()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Custom background color
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                ),
                child: const Text(
                  "Register",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                )),
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      child: const Text(
                        "LOGIN",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 224, 221, 221),
    );
  }
}
