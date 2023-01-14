import 'package:flutter/material.dart';
import 'package:layout_part_1/page/latihan_drawer.dart';

class LatihanAppbar extends StatelessWidget {
  const LatihanAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        drawer: SideBarLat(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Layout-Part-1'),
          actions: [
            IconButton(
                onPressed: () {
                  print('search');
                },
                icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  print('exit');
                },
                icon: const Icon(Icons.exit_to_app)),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.amber.shade400, Colors.purple.shade800],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
          ),
          bottom: const TabBar(
            isScrollable: true,
            // ignore: prefer_const_literals_to_create_immutables
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'HOME',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'FAVORITE',
              ),
              Tab(
                icon: Icon(Icons.face),
                text: 'PROFILE',
              ),
              Tab(
                icon: Icon(Icons.search),
                text: 'SEARCH',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'HOME',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'FAVORITE',
              ),
              Tab(
                icon: Icon(Icons.face),
                text: 'PROFILE',
              ),
              Tab(
                icon: Icon(Icons.search),
                text: 'SEARCH',
              ),
            ],
            indicatorColor: Colors.white,
            indicatorWeight: 5,
          ),
        ),
        body: TabBarView(children: [
          buildPage(teks: 'Home'),
          buildPage(teks: 'Star'),
          buildPage(teks: 'profile'),
          buildPage(teks: 'Search'),
          buildPage(teks: 'Home'),
          buildPage(teks: 'Star'),
          buildPage(teks: 'profile'),
          buildPage(teks: 'Search'),
        ]),
      ),
    );
  }

  Widget buildPage({required teks}) {
    return Center(
      child: Text(
        teks,
        style: const TextStyle(fontSize: 30),
      ),
    );
  }
}
