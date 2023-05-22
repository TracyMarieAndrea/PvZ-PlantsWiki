import 'package:flutter/material.dart';
import 'app_drawer.dart';
import 'details.dart';

class NightPlants extends StatelessWidget {
  const NightPlants({super.key});

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
        body: SingleChildScrollView(
          child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 25.0),
              decoration: const BoxDecoration(),
              child: Column(children: [
                Row(
                  children: const [
                    Text(
                      'Night Plants',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: const SizedBox(
                    width: 330,
                    child: Text(
                      'A unique group of plants that thrive in the darkness. They play a crucial role in defending night levels of the game.',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Enter plant name...',
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 15.0),
                            prefixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // handle filter button press
                        },
                        icon: const Icon(Icons.filter_list),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 620,
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10),
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Handle the tap event here
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailsScreen(
                                      documentId: "7akGYuHG5hl5AHu03768"),
                                ),
                              );
                            },
                            child: Container(
                                height: 160,
                                width: 160,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 1.5,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 0,
                                        blurRadius: 4,
                                        offset: const Offset(0, 10),
                                      )
                                    ]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(height: 8),
                                    Center(
                                      child: Image.asset(
                                        'assets/sun-shroom.png',
                                        height: 80,
                                        width: 80,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Center(
                                      child: Text(
                                        'Sun-shroom',
                                        style: TextStyle(
                                            fontSize: 19,
                                            fontFamily: 'Gideon',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Handle the tap event here
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailsScreen(
                                      documentId: "k8J39vCI3rDIrpWe7hZ6"),
                                ),
                              );
                            },
                            child: Container(
                                height: 160,
                                width: 160,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 1.5,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 0,
                                        blurRadius: 4,
                                        offset: const Offset(0, 10),
                                      )
                                    ]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(height: 5),
                                    Center(
                                      child: Image.asset(
                                        'assets/puff-shroom.png',
                                        height: 75,
                                        width: 75,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    const SizedBox(height: 17),
                                    const Center(
                                      child: Text(
                                        'Puff-shroom',
                                        style: TextStyle(
                                            fontSize: 18.5,
                                            fontFamily: 'Gideon',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Handle the tap event here
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailsScreen(
                                      documentId: "vMhJ4ggYHxKInHtdIBgC"),
                                ),
                              );
                            },
                            child: Container(
                                height: 160,
                                width: 160,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 1.5,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 0,
                                        blurRadius: 4,
                                        offset: const Offset(0, 10),
                                      )
                                    ]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(height: 5),
                                    Center(
                                      child: Image.asset(
                                        'assets/fume-shroom.png',
                                        height: 93,
                                        width: 93,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    const Center(
                                      child: Text(
                                        'Fume-shroom',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'Gideon',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Handle the tap event here
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailsScreen(
                                      documentId: "7KnhSZ6nXJ1vPrMHqqJq"),
                                ),
                              );
                            },
                            child: Container(
                                height: 160,
                                width: 160,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 1.5,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 0,
                                        blurRadius: 4,
                                        offset: const Offset(0, 10),
                                      )
                                    ]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(height: 5),
                                    Center(
                                      child: Image.asset(
                                        'assets/grave-buster.png',
                                        height: 95,
                                        width: 95,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Center(
                                      child: Text(
                                        'Grave Buster',
                                        style: TextStyle(
                                            fontSize: 19,
                                            fontFamily: 'Gideon',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Handle the tap event here
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailsScreen(
                                      documentId: "EKcICDewQJFczc7YxTSr"),
                                ),
                              );
                            },
                            child: Container(
                                height: 160,
                                width: 160,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 1.5,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 0,
                                        blurRadius: 4,
                                        offset: const Offset(0, 10),
                                      )
                                    ]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(height: 5),
                                    Center(
                                      child: Image.asset(
                                        'assets/hypno-shroom.png',
                                        height: 90,
                                        width: 90,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Center(
                                      child: Text(
                                        'Hypno-shroom',
                                        style: TextStyle(
                                            fontSize: 19,
                                            fontFamily: 'Gideon',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Handle the tap event here
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailsScreen(
                                      documentId: "oMpjKm3nF2bnvu6GpayN"),
                                ),
                              );
                            },
                            child: Container(
                                height: 160,
                                width: 160,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 1.5,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 0,
                                        blurRadius: 4,
                                        offset: const Offset(0, 10),
                                      )
                                    ]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(height: 5),
                                    Center(
                                      child: Image.asset(
                                        'assets/ice-shroom.png',
                                        height: 95,
                                        width: 95,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    const Center(
                                      child: Text(
                                        'Ice-shroom',
                                        style: TextStyle(
                                            fontSize: 19,
                                            fontFamily: 'Gideon',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Handle the tap event here
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailsScreen(
                                      documentId: "6RXC7ehwKjs2GAaytSwc"),
                                ),
                              );
                            },
                            child: Container(
                                height: 160,
                                width: 160,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 1.5,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 0,
                                        blurRadius: 4,
                                        offset: const Offset(0, 10),
                                      )
                                    ]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(height: 5),
                                    Center(
                                      child: Image.asset(
                                        'assets/doom-shroom.png',
                                        height: 87,
                                        width: 87,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Center(
                                      child: Text(
                                        'Doom-shroom',
                                        style: TextStyle(
                                            fontSize: 19,
                                            fontFamily: 'Gideon',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Handle the tap event here
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailsScreen(
                                      documentId: "EFIslhOTknlvF5mwIVJK"),
                                ),
                              );
                            },
                            child: Container(
                                height: 160,
                                width: 160,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 1.5,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 0,
                                        blurRadius: 4,
                                        offset: const Offset(0, 10),
                                      )
                                    ]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(height: 5),
                                    Center(
                                      child: Image.asset(
                                        'assets/scaredy-shroom.png',
                                        height: 90,
                                        width: 90,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    const SizedBox(height: 9),
                                    const Center(
                                      child: Text(
                                        'Scaredy-shroom',
                                        style: TextStyle(
                                            fontSize: 18.5,
                                            fontFamily: 'Gideon',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ])),
        ));
  }
}
