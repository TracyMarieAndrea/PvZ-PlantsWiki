import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'app_drawer.dart';
import 'day_plants.dart';
import 'night_plants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(50, 217, 78, 1.0),
        centerTitle: true,
        elevation: 0.0,
        title: const Text(
          "PvZ: Plants Wiki",
          style: TextStyle(
              fontFamily: 'Outfit',
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.white),
        ),
      ),
      drawer: appBarDrawer(context),
      body: Center(
        child: Container(
          alignment: AlignmentDirectional.centerStart,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Text('Welcome to Pvz: Plants Wiki!',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Text(
                      textAlign: TextAlign.center,
                      'Prepare to embark on a botanical adventure filled with captivating plants, relentless zombies, and endless strategies. This wiki app is your gateway to atreasure trove of knowledge about all the plants n the game.',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      )),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DayPlants(),
                        ),
                      );
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromARGB(255, 253, 236, 168),
                            border: Border.all(color: Colors.grey, width: 1.5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: const Offset(0, 10),
                              )
                            ]),
                        height: 160,
                        width: 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/day.svg',
                              width: 50,
                              height: 50,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Day Plants',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Gideon',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NightPlants(),
                        ),
                      );
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromARGB(255, 196, 192, 255),
                            border: Border.all(color: Colors.grey, width: 1.5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: const Offset(0, 10),
                              )
                            ]),
                        height: 160,
                        width: 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/night.svg',
                              width: 50,
                              height: 50,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Night Plants',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Gideon',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
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
