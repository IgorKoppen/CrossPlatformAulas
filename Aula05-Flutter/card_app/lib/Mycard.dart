
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget{
 
  
  
  @override
  Widget build(BuildContext context) {
    return  Card(
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
                ));
  }

}