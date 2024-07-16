import 'package:ikycoffeshop/homescreen.dart';
import 'package:flutter/material.dart';

class SuccesScreen extends StatelessWidget {
  const SuccesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF483434),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/Cheklist.png',
                    width: 164,
                    height: 164,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Order Succes',
                    style: TextStyle(
                      fontFamily: 'Mohave',
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 10,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomeScreen();
                }));
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color(0xFF27CD41),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 70,
                child: Center(
                  child: Text(
                    'Finish',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Mohave',
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
