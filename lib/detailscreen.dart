import 'package:flutter/material.dart';
import 'package:ikycoffeshop/PayScreen.dart';
import 'package:ikycoffeshop/model/coffemenu.dart';

class DetailScreen extends StatelessWidget {
  final CoffeMenu coffe;

  const DetailScreen({Key? key, required this.coffe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(
                coffe.imageAsset,
                height: 400,
                fit: BoxFit.fill,
              ),
            ],
          ),
          Positioned(
            top: 350,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(50)),
              child: Container(
                height: MediaQuery.of(context).size.height - 350,
                color: const Color(0xFFD9D9D9),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            coffe.nameMenu,
                            style: TextStyle(
                              fontFamily: 'Mohave',
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              letterSpacing: 5,
                            ),
                          ),
                          Text(
                            coffe.priceMenu,
                            style: TextStyle(
                              fontFamily: 'Mohave',
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'About',
                        style: TextStyle(
                          fontFamily: 'Mohave',
                          fontSize: 32,
                        ),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Opacity(
                          opacity: 0.6,
                          child: Text(
                            coffe.description,
                            style: TextStyle(
                              fontFamily: 'Mohave',
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return PayScreen(coffe: coffe);
                        }));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: const Color(0xFF483434),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            'Buy Coffee',
                            style: TextStyle(
                              fontFamily: 'Mohave',
                              fontSize: 36,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: IconButton(
              icon: Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFD9D9D9),
                ),
                child: const Icon(Icons.arrow_back, color: Colors.black),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              iconSize: 35,
            ),
          ),
        ],
      ),
    );
  }
}
