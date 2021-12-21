import 'dart:io';

import 'package:demo_1/detail.dart';
import 'package:flutter/material.dart';

import 'common.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Ebook App Viet Luu',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  ItemBook(image: 'assets/images/sách_3.jpg'),
                  SizedBox(width: 10),
                  ItemBook(image: 'assets/images/sách_2.jpg'),
                  SizedBox(width: 10),
                  ItemBook(image: 'assets/images/sách_1.jpg'),
                  SizedBox(width: 10),
                  ItemBook(image: 'assets/images/sách_3.jpg'),
                  SizedBox(width: 10),
                  ItemBook(image: 'assets/images/sách_2.jpg'),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Text(
                "Categories",
                style: kTextConfig.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  CategoriesButton(title: 'Shorts stories'),
                  SizedBox(width: 10),
                  CategoriesButton(title: 'Science fiction'),
                  SizedBox(width: 10),
                  CategoriesButton(title: 'Science fiction'),
                  SizedBox(width: 10),
                  CategoriesButton(title: 'Science fiction'),
                  SizedBox(width: 10),
                  CategoriesButton(title: 'Science fiction'),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Text(
                "Recently Added",
                style: kTextConfig.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 20),
            RecentlyCard(
              image: 'assets/images/sách_2.jpg',
              title: 'Không gia đình',
              actor: 'Hector malot',
              script:
                  'Introducing Auto-Invest, a new Binance Earn product designed to help you easily set recurring crypto buys ',
            ),
            RecentlyCard(
              image: 'assets/images/sách_1.jpg',
              title: 'Maria: the Wrongs of Woman',
              actor: 'Mary Wollstone',
              script:
                  'Introducing Auto-Invest, a new Binance Earn product designed to help you easily set recurring crypto buys ',
            ),
            RecentlyCard(
              image: 'assets/images/sách_2.jpg',
              title: 'Maria: the successfully of men',
              actor: 'Bussiness book',
              script:
                  'Introducing Auto-Invest, a new Binance Earn product designed to help you easily set recurring crypto buys ',
            ),
            RecentlyCard(
              image: 'assets/images/sách_3.jpg',
              title: 'Maria: the Wrongs of Woman',
              actor: 'Mary Wollstone',
              script:
                  'Introducing Auto-Invest, a new Binance Earn product designed to help you easily set recurring crypto buys ',
            ),
            RecentlyCard(
              image: 'assets/images/sách_3.jpg',
              title: 'Maria: the Wrongs of Woman',
              actor: 'Mary Wollstone',
              script:
                  'Introducing Auto-Invest, a new Binance Earn product designed to help you easily set recurring crypto buys ',
            ),
          ],
        ),
      ),
    );
  }
}

class RecentlyCard extends StatelessWidget {
  final String image;
  final String title;
  final String actor;
  final String script;
  const RecentlyCard({
    Key? key,
    required this.image,
    required this.title,
    required this.actor,
    required this.script,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(builder: (context) =>  DetailScreen()));
      },
      child: Container(
        height: 200,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(
                        image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: 200,
                  width: 100,
                ),
              ),
              SizedBox(
                width: 18,
              ),
              Flexible(
                flex: 2,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        title,
                        style: kTextConfig.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        actor,
                        style: kTextConfig.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        script,
                        style: kTextConfig.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriesButton extends StatelessWidget {
  final String title;
  const CategoriesButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 50,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.blue,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class ItemBook extends StatelessWidget {
  final String image;
  const ItemBook({
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Color(0xFFA5A2A2), blurRadius: 5)]),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              image,
            ),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
