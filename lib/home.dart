import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Wrap with Scaffold
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.white],
            stops: [0.4, 1],
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
          ),
        ),
        padding: EdgeInsets.only(
          top: 24,
          left: 16,
          right: 16,
          bottom: 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.account_box_outlined),
                  onPressed: () {
                    // Add onPressed action here if needed
                  },
                ),
                Expanded(
                  child: TextField(
                    controller: TextEditingController(),
                    minLines: 1,
                    maxLines: 1,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(16),
                      labelText: "Enter Username",
                    ),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    // Add onPressed action here if needed
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
