import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pvzapp/home.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'app_drawer.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.documentId});

  final String documentId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: FutureBuilder<DocumentSnapshot>(
        future: FirebaseFirestore.instance
            .collection('plantsDetails')
            .doc(documentId)
            .get(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (!snapshot.hasData) {
            return Center(
              child: Text('No data available.'),
            );
          }

          // Access the fetched data
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }

          String name = snapshot.data!.get('Name');
          String description = snapshot.data!.get('Description');
          String damage = snapshot.data!.get('Damage');
          String range = snapshot.data!.get('Range');
          int sunCost = snapshot.data!.get('Sun_cost');
          String special = snapshot.data!.get('Special');

          return SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                decoration: const BoxDecoration(color: Color(0xffF4FDD5)),
                child: Column(children: [
                  Container(
                    width: 350,
                    height: 40,
                    color: Colors.transparent,
                    alignment: AlignmentDirectional.centerStart,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      iconSize: 40,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 315,
                    height: 40,
                    color: Colors.transparent,
                    alignment: AlignmentDirectional.centerStart,
                    child: Center(
                      child: Text(
                        '$name',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 150,
                          height: 50,
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 12),
                          decoration: BoxDecoration(
                            color: Color(0xffFFF2C0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          alignment: AlignmentDirectional.centerStart,
                          child: Text(
                            'Sun Cost: $sunCost',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 150,
                          height: 50,
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 12),
                          decoration: BoxDecoration(
                            color: Color(0xffFFCECF),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          alignment: AlignmentDirectional.centerStart,
                          child: Text(
                            'Damage: $damage',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 320,
                    height: 200,
                    color: Colors.transparent,
                    child: Center(
                      child: Image.asset(
                        'assets/plant_logo.png',
                        height: 170,
                        width: 170,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 400,
                    height: 400,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 3),
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                      ),
                      gradient: LinearGradient(
                        colors: [Colors.white, Color(0xffF4F2F4)],
                        stops: [0.0, 1.0],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Details: ',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Center(
                                    child: Text(
                                      '$description',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                              //Enter plant description here
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 150,
                                    height: 40,
                                    alignment: AlignmentDirectional.center,
                                    child: Text(
                                      'Special: $special',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 150,
                                    height: 40,
                                    alignment: AlignmentDirectional.center,
                                    child: Text(
                                      'Range: $range',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ])),
          );
          /*return Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Color.fromARGB(204, 255, 254, 254),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.chevron_left),
                                  iconSize: 50,
                                  onPressed: () {
                                    // Add your onPressed callback function here
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HomeScreen(),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                            Container(
                              child: Text('$name',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Sun Cost:     ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text('$sunCost',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Range:         ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text('$range',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Damage:      ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text('$damage',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Description',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Column(
                                  children: [
                                    Text('$description',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          );*/
        },
      ),
    );
  }
}
