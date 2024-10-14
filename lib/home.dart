// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:login_signup/main.dart';
import 'package:login_signup/music.dart';
import 'package:login_signup/shopping.dart';

// ------------------------------- Home Page---------------------------

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "First App",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
        ),
        backgroundColor: const Color.fromARGB(255, 175, 113, 204),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 300,
              height: 300,
              //padding: const EdgeInsets.all(10),
              child: Image(image: AssetImage("assets/welcome.jpg")),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: const Text(
                "Welcome To Ecommerce-site",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),

            // creating Container for makig buttons in column

            Container(
              margin: const EdgeInsets.fromLTRB(90, 20, 90, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue
                          .shade100, // background color for each button container
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Music",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(width: 10),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Music()));
                          },
                          style: IconButton.styleFrom(
                              backgroundColor: Colors.grey),
                          icon: const Icon(
                            Icons.music_note,
                            color: Colors.white,
                          ),
                          iconSize: 30,
                        )
                      ],
                    ),
                  ),

                  // Giving space between both buttons
                  const SizedBox(height: 20),

                  // Second Button Container

                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 31, 122,
                          134), // Background color for the Music row
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Shopping",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(width: 10),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Shopping()));
                          },
                          style: IconButton.styleFrom(
                              backgroundColor: Colors.grey),
                          icon: const Icon(
                            Icons.shopping_bag,
                            color: Colors.white,
                          ),
                          iconSize: 30,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const MyHomePage(title: 'Welcome')));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(
                          255, 231, 76, 117), // Custom background color
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: const Text(
                      "Sign out",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(213, 245, 227, 0.8),
    );
  }
}
