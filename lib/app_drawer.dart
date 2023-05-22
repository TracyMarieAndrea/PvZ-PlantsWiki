import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pvzapp/night_plants.dart';
import 'aboutus_screen.dart';
import 'home.dart';

Widget appBarDrawer(BuildContext context) {
  return Drawer(
      child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
      drawerHeader(),
      const SizedBox(
        height: 10,
      ),
      homeTile(context),
      const SizedBox(
        height: 10,
      ),
      dayplantTile(context),
      const SizedBox(
        height: 10,
      ),
      nightplantTile(context),
      const SizedBox(
        height: 10,
      ),
      aboutTile(context),
    ],
  ));
}

DrawerHeader drawerHeader() {
  return DrawerHeader(
    decoration: const BoxDecoration(
      color: Color.fromRGBO(50, 217, 78, 1.0),
    ),
    child: Column(
      children: [
        Image.asset(
          "assets/plant_logo.png",
          width: 100,
          height: 100,
        ),
        const Text(
          'PvZ: Plants Wiki',
          style: TextStyle(
              fontFamily: 'Outfit',
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Colors.white),
        ),
      ],
    ),
  );
}

ListTile homeTile(BuildContext context) {
  return ListTile(
    leading: Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 14),
      child: SvgPicture.asset(
        'assets/Home-icon.svg',
        width: 25,
        height: 25,
      ),
    ),
    title: const Text(
      'Home',
      style:
          TextStyle(fontFamily: 'Poppins', fontSize: 18, color: Colors.black),
    ),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    },
  );
}

ListTile dayplantTile(BuildContext context) {
  return ListTile(
    leading: Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      child: SvgPicture.asset(
        'assets/day.svg',
        width: 32,
        height: 32,
      ),
    ),
    title: const Text(
      'Day Plants',
      style:
          TextStyle(fontFamily: 'Poppins', fontSize: 18, color: Colors.black),
    ),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    },
  );
}

ListTile nightplantTile(BuildContext context) {
  return ListTile(
    leading: Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 13),
      child: SvgPicture.asset(
        'assets/night.svg',
        width: 26,
        height: 26,
      ),
    ),
    title: const Text(
      'Night Plants',
      style:
          TextStyle(fontFamily: 'Poppins', fontSize: 18, color: Colors.black),
    ),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const NightPlants()),
      );
    },
  );
}

ListTile aboutTile(BuildContext context) {
  return ListTile(
    leading: Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
      child: SvgPicture.asset(
        'assets/about-icon.svg',
        width: 26,
        height: 26,
      ),
    ),
    title: const Text(
      'About',
      style:
          TextStyle(fontFamily: 'Poppins', fontSize: 18, color: Colors.black),
    ),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const NightPlants()),
      );
    },
  );
}
