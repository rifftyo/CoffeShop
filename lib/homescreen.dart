import 'package:ikycoffeshop/detailscreen.dart';
import 'package:ikycoffeshop/model/coffemenu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF483434),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(bottom: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Good Morning',
                            style: TextStyle(
                              fontSize: 25,
                              color: Color(0xFF5D8964),
                              fontFamily: 'Mohave',
                            ),
                          ),
                          const Text(
                            'Rifky Tyo',
                            style: TextStyle(
                              fontSize: 34,
                              color: Colors.white,
                              letterSpacing: 2.5,
                              fontFamily: 'Mohave',
                            ),
                          ),
                        ],
                      ),
                      ClipOval(
                        child: Image.asset(
                          'images/ProfileUser.jpg',
                          width: 75,
                          height: 75,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: SingleChildScrollView(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Special Offers',
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontFamily: 'Mohave',
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Image.asset(
                        'images/PosterOffers.png',
                        fit: BoxFit.fill,
                        ),
                    ),
                    const Text(
                      'Coffe Menu',
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontFamily: 'Mohave',
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 23,
                        shrinkWrap: true, // Batas Sesungguhnya
                        physics:
                            const NeverScrollableScrollPhysics(), // Tidak Bisa DiScrool
                        children: coffeMenuList.map((coffe) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return DetailScreen(coffe: coffe);
                              }));
                            },
                            child: Card(
                              color: const Color(0xFFD9D9D9),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.vertical(
                                        top: Radius.circular(20),
                                      ),
                                      child: Image.asset(
                                        coffe.imageAsset,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          coffe.nameMenu,
                                          style: const TextStyle(
                                              fontFamily: 'Mohave',
                                              fontSize: 18,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          coffe.priceMenu,
                                          style: const TextStyle(
                                              fontFamily: 'Mohave',
                                              fontSize: 18,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
