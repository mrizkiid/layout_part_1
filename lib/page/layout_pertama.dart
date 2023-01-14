// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LayoutPertama extends StatelessWidget {
  const LayoutPertama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      //   title: const Text('Layout Pertama'),
      //   centerTitle: true,
      //   flexibleSpace: Container(
      //     decoration: BoxDecoration(
      //         image: DecorationImage(
      //             fit: BoxFit.cover,
      //             image: const AssetImage('asset/images/background.jpg'),
      //             colorFilter: ColorFilter.mode(
      //                 Colors.black.withOpacity(0.5), BlendMode.darken))),
      //   ),
      //   elevation: 3,
      // ),
      body: ListView(
        padding: EdgeInsets.all(32),
        children: <Widget>[
          buildBurgerCard(),
          SizedBox(
            height: 30,
          ),
          buildImageWidget(),
          SizedBox(
            height: 30,
          ),
          buildCardColor()
        ],
      ),
    );

    // return Scaffold(
    //   extendBodyBehindAppBar: true,
    //   appBar: AppBar(
    //     actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
    //     title: const Text('Layout Transparent'),
    //     shape: const RoundedRectangleBorder(
    //         borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))),
    //     backgroundColor: Colors.white.withOpacity(0.2),
    //     elevation: 0,
    //   ),
    //   body: Container(
    //     child: Image.asset(
    //       'asset/images/background.jpg',
    //       fit: BoxFit.cover,
    //       width: double.infinity,
    //       height: double.infinity,
    //     ),
    //   ),
    // );
  }

  Widget buildBurgerCard() {
    const urlBurger =
        'https://images.unsplash.com/photo-1586190848861-99aa4a171e90?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80';

    return Align(
      alignment: Alignment.center,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          padding: EdgeInsets.all(12),
          color: Colors.black,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                urlBurger,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              Text(
                'Beef Burger',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Onion With Cheese',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Text(
                '\$24.00',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImageWidget() {
    return Align(
      alignment: Alignment.center,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Container(
          padding: EdgeInsets.all(20),
          height: 200,
          width: 250,
          decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.darken),
                  fit: BoxFit.cover,
                  image: AssetImage('asset/images/background.jpg'))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'Cotton',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              const Text(
                '\$200',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCardColor() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(colors: [
              Colors.amber.shade400,
              Colors.purple.shade400,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        height: 200,
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'AAAAAAAA',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'AAAAAAAA',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            const Text(
              '\$200',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
