import 'package:flutter/material.dart';

class SideBarLat extends StatelessWidget {
  const SideBarLat({super.key});

  @override
  Widget build(BuildContext context) {
    const String nama = 'Muhammad Rizki';
    const String email = 'MuhammadRizki@gmail.com';
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5), BlendMode.darken),
                    fit: BoxFit.fill,
                    image: const AssetImage('asset/images/background.jpg'))),
            accountName: const Text(nama),
            accountEmail: const Text(email),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage('asset/images/profile.jpeg'),
            ),
          ),
          builListTileLat(icon: Icons.home, nama: 'Home', l: false, i: 0),
          builListTileLat(icon: Icons.star, nama: 'Favorite', l: true, i: 9),
          builListTileLat(icon: Icons.face, nama: 'Profile', l: false, i: 0),
          const Divider(color: Colors.black),
          builListTileLat(
              icon: Icons.settings, nama: 'Settings', l: false, i: 0),
        ],
      ),
    );
  }

  Widget builListTileLat(
      {required IconData icon, required String nama, required bool l, int? i}) {
    if (l) {
      return InkWell(
        onTap: () {},
        child: ListTile(
          title: Text(nama),
          leading: Icon(icon),
          trailing: ClipOval(
            child: Container(
              color: Colors.red,
              height: 20,
              width: 20,
              child: Center(
                child: Text(
                  '$i',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      );
    } else {
      return InkWell(
        onTap: () {},
        child: ListTile(
          title: Text(nama),
          leading: Icon(icon),
        ),
      );
    }
  }
}
