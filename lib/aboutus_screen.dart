import 'package:flutter/material.dart';
import 'app_drawer.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      drawer: appBarDrawer(context),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: const Color.fromRGBO(101, 227, 121, 1),
      centerTitle: true,
      title: const Text(
        "PvZ: Plants Wiki",
        style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 25,
            fontWeight: FontWeight.w800,
            color: Colors.white),
      ),
    );
  }

  Container _buildBody() {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Column(
        children: <Widget>[
          Container(
            width: 300,
            height: 300,
            /*decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: const [
                    Color.fromRGBO(130, 194, 110, 1),
                    Color.fromRGBO(216, 226, 107, 1),
                  ],
                ),
                border: Border.all(color: Colors.black, width: 1.5),
                borderRadius: BorderRadius.all(Radius.circular(150))),*/
            margin: const EdgeInsets.all(15),
            alignment: Alignment.center,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/plant_logo.png',
                    width: 300,
                    height: 300,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 30, 10, 10),
            alignment: Alignment.center,
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Plants vs. Zombies',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 30),
            alignment: Alignment.center,
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Plant Wiki App',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 15, 10, 10),
            alignment: Alignment.center,
            transformAlignment: Alignment.center,
            child: const Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  'Get to know more about your favorite plants from one of the iconic games, Plants vs. Zombies.',
                  maxLines: 5,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.ltr,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(35, 10, 35, 10),
              child: Text(
                'Explore',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
