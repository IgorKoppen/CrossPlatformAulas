import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: Center(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("images/pingu.png"),
                ),
                Text(
                  "Pingu",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pacifico'),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text("Celebridade",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.teal[100],
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline)),
                ),
                Card(
                    child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '+551198763322',
                        style: TextStyle(color: Colors.teal, fontSize: 20),
                      ),
                    ],
                  ),
                )),
                SizedBox(
                        height: 10,
                      ),
                Card(
                    child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'pingu@gmail.com',
                        style: TextStyle(color: Colors.teal, fontSize: 20),
                      ),
                    ],
                  ),
                ))
              ],
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
          ))),
    );
  }
}
