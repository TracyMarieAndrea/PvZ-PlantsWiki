import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'app_drawer.dart';
import 'details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                      'Day Plants',
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
                      'Day plants in Plants vs Zombies refer to a set of plant species that are available in the daytime levels.',
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
                                      documentId: "yO52Xt7VbSrGdcC5Kpgd"),
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
                                        'assets/sunflower.png',
                                        height: 90,
                                        width: 90,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    const Center(
                                      child: Text(
                                        'Sunflower',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'Gideon',
                                            color: Color(0xff4E7B52),
                                            fontWeight: FontWeight.bold),
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailsScreen(
                                      documentId: "ygf7TVq5p7JTqrMOp1lD"),
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
                                        'assets/peashooter.png',
                                        height: 90,
                                        width: 90,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    const Center(
                                      child: Text(
                                        'Peashooter',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'Gideon',
                                            color: Color(0xff4E7B52),
                                            fontWeight: FontWeight.bold),
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
                                    documentId: "0yN7mnjnmtZQTRubgUT4",
                                  ),
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
                                        'assets/wallnut.png',
                                        height: 90,
                                        width: 90,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    const Center(
                                      child: Text(
                                        'Wallnut',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'Gideon',
                                            color: Color(0xff4E7B52),
                                            fontWeight: FontWeight.bold),
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
                                      documentId: "dWzO8iTQMqa6cmY9Nc6q"),
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
                                        'assets/potato_mine.png',
                                        height: 90,
                                        width: 90,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    const Center(
                                      child: Text(
                                        'Potato Mine',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'Gideon',
                                            color: Color(0xff4E7B52),
                                            fontWeight: FontWeight.bold),
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
                                      documentId: "Mtc0KAjq8gQZbpmLHI1e"),
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
                                        'assets/cherry_bomb.png',
                                        height: 90,
                                        width: 90,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    const Center(
                                      child: Text(
                                        'Cherry Bomb',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'Gideon',
                                            color: Color(0xff4E7B52),
                                            fontWeight: FontWeight.bold),
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
                                      documentId: "pLkHxXhp3OVpinBWZAkP"),
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
                                        'assets/chomper.png',
                                        height: 90,
                                        width: 90,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    const Center(
                                      child: Text(
                                        'Chomper',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'Gideon',
                                            color: Color(0xff4E7B52),
                                            fontWeight: FontWeight.bold),
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
                                      documentId: "xKnw8RlmRSXEXruKkUOm"),
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
                                        'assets/repeater.png',
                                        height: 90,
                                        width: 90,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    const Center(
                                      child: Text(
                                        'Repeater',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'Gideon',
                                            color: Color(0xff4E7B52),
                                            fontWeight: FontWeight.bold),
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
                                      documentId: "RwTE8SnCjjbkQms9CInJ"),
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
                                        'assets/snowpea.png',
                                        height: 90,
                                        width: 90,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    const Center(
                                      child: Text(
                                        'Snowpea',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'Gideon',
                                            color: Color(0xff4E7B52),
                                            fontWeight: FontWeight.bold),
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
