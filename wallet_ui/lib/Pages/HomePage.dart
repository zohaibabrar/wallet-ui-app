// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_ui/Widgets/MyPeople.dart';
import 'package:wallet_ui/Widgets/MyTransactions.dart';

import '../Widgets/MyCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // App Bar -> Heading + icon
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 25,
                horizontal: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cards',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Icon(
                      Icons.add,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Cards -> PageView
            SizedBox(
              height: 190,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                      number: 2233,
                      balance: 1445.22,
                      color: Colors.deepPurple[400]),
                  MyCard(
                      number: 1234, balance: 5250.43, color: Colors.blue[400]),
                  MyCard(
                      number: 5678, balance: 8712.55, color: Colors.green[400]),
                ],
              ),
            ),
            const SizedBox(height: 15),

            // Scroller
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.35),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.grey.shade800,
                  dotHeight: 8,
                ),
              ),
            ),

            // Send Money -> Heading
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Send Money',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),

            // People -> one for add + multiple circle avatar
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade200,
                      ),
                      child: Icon(Icons.add),
                    ),
                  ),
                  MyPeople(imageProvider: 'assets/images/asthetic-girl.jpg'),
                  MyPeople(imageProvider: 'assets/images/black-lady.jpg'),
                  MyPeople(imageProvider: 'assets/images/person-hat.jpg'),
                  MyPeople(imageProvider: 'assets/images/spikes-smile.jpg'),
                ],
              ),
            ),

            // History Today -> Heading
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'History Today',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      color: Colors.lightBlue,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            // List of Transactions
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    MyTransactions(
                      logoProvider: 'assets/images/apple-logo.png',
                      title: 'Apple Store',
                      date: '15/02/2022',
                      amount: 5367.23,
                      color: Colors.deepPurpleAccent.shade100,
                      logoColor: Colors.white,
                    ),
                    MyTransactions(
                      logoProvider: 'assets/images/creative-cloud.png',
                      title: 'Creative Cloud',
                      date: '15/02/2022',
                      amount: 499.99,
                      color: Colors.blue.shade100,
                      logoColor: Colors.white,
                    ),
                    MyTransactions(
                      logoProvider: 'assets/images/mcdonalds.png',
                      title: 'McDonalds',
                      date: '13/03/2022',
                      amount: 320.54,
                      color: Colors.grey.shade200,
                      logoColor: Colors.yellow[700],
                    ),
                    MyTransactions(
                      logoProvider: 'assets/images/starbucks.png',
                      title: 'Starbucks',
                      date: '24/03/2022',
                      amount: 25.03,
                      color: Colors.grey.shade200,
                      logoColor: Colors.green[900],
                    ),
                  ],
                ),
              ),
            ),

            // Bottom AppBar
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.monetization_on),
          backgroundColor: Colors.pink,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.home,
                          size: 34,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.menu_book_outlined,
                          size: 34,
                        )),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.pie_chart,
                          size: 34,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.notifications,
                          size: 34,
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
