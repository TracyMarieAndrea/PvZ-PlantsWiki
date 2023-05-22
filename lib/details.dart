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

          return Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: Container(
                          width: double.infinity,
                          height: 500,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.blueGrey,
                          ),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                height: 50,
                                child: Text('Name:  $name',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
