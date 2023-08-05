import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  const Start({super.key, required this.title});

  final String title;

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black, Colors.white],
          stops: [0.3, 1.0],
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Welcome!',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                decoration: TextDecoration.none,
              ),
            ),
            const Center(
              child: Text(
                'To get started login to your google account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  decoration: TextDecoration.none,
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: TextButton(
                onPressed: () {}, //Put firebase google auth here
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  backgroundColor: Colors.white,
                ),
                child: Ink(
                  height: 70,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.account_box_rounded),
                      SizedBox(
                          width:
                              8), // Adding some space between the icon and text
                      Text(
                        'Login with Google',
                        style: TextStyle(
                          fontSize: 20,
                          decoration: TextDecoration.none,
                          color: Colors.black87,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
