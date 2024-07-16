import 'package:ikycoffeshop/model/coffemenu.dart';
import 'package:ikycoffeshop/successcreen.dart';
import 'package:flutter/material.dart';

const adminFees = 0.5;

class PayScreen extends StatefulWidget {
  final CoffeMenu coffe;

  const PayScreen({Key? key, required this.coffe}) : super(key: key);

  @override
  _PayScreenState createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  int itemCount = 1;

  void addItem() {
    setState(() {
      itemCount++;
    });
  }

  void removeItem() {
    setState(() {
      if (itemCount > 1) itemCount--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF483434),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  IconButton(
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
                    iconSize: 30,
                  ),
                  const Center(
                    child: Text(
                      'My Cart',
                      style: TextStyle(
                          fontFamily: 'Mohave',
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                child: const Text(
                  'Order Detail',
                  style: TextStyle(
                      fontFamily: 'Mohave', fontSize: 32, color: Colors.white),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          widget.coffe.imageAsset,
                          width: 139,
                          height: 165,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              widget.coffe.nameMenu,
                              style: TextStyle(
                                  fontFamily: 'Mohave',
                                  fontSize: 32,
                                  color: Colors.white),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black,
                                    ),
                                    child: const Icon(Icons.remove,
                                        color: Colors.white),
                                  ),
                                  onPressed: removeItem,
                                  iconSize: 30,
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    '$itemCount',
                                    style: const TextStyle(
                                        fontFamily: 'Mohave',
                                        fontSize: 30,
                                        color: Colors.white),
                                  ),
                                ),
                                IconButton(
                                  icon: Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: const Icon(Icons.add,
                                        color: Colors.black),
                                  ),
                                  onPressed: addItem,
                                  iconSize: 30,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                child: const Text(
                  'Price',
                  style: TextStyle(
                      fontFamily: 'Mohave', fontSize: 32, color: Colors.white),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Default Price',
                      style: TextStyle(
                          fontFamily: 'Mohave',
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.coffe.priceMenu,
                      style: TextStyle(
                          fontFamily: 'Mohave',
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(right: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Admin Fees',
                      style: TextStyle(
                          fontFamily: 'Mohave',
                          fontSize: 22,
                          color: Colors.white),
                    ),
                    Text(
                      '\$$adminFees',
                      style: TextStyle(
                          fontFamily: 'Mohave',
                          fontSize: 22,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(right: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sub Total',
                      style: TextStyle(
                        fontFamily: 'Mohave',
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      (widget.coffe.price * itemCount + adminFees).toString(),
                      style: TextStyle(
                        fontFamily: 'Mohave',
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                child: const Text(
                  'Order Type',
                  style: TextStyle(
                      fontFamily: 'Mohave', fontSize: 32, color: Colors.white),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SuccesScreen();
                        }));
                      },
                      child: Container(
                        width: 175,
                        height: 45,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Color(0xFF27CD41),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            'Delivery',
                            style: TextStyle(
                                fontFamily: 'Mohave',
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SuccesScreen();
                        }));
                      },
                      child: Container(
                        width: 175,
                        height: 45,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            'PickUp',
                            style: TextStyle(
                                fontFamily: 'Mohave',
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
