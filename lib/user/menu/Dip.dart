
import 'package:flutter/material.dart';

class Dip extends StatefulWidget {
  const Dip({super.key});

  @override
  State<Dip> createState() => _BreadsState();
}

class _BreadsState extends State<Dip> {
  bool isFavorited = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 10 / 12.5),
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                width: 150,
                height: 230,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/menu/mayo.jpeg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            icon: Icon(
                              isFavorited
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: isFavorited ? Colors.red : null,
                            ),
                            onPressed: () {
                              setState(() {
                                isFavorited = !isFavorited;
                              });
                              // Handle favorite icon tap
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              'Mayonnaise',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Image.asset(
                              'assets/icons/veg.png',
                              width: 15,
                            ),
                          )
                        ],
                      ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      SizedBox(
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Add',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'poppins',
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '+19',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'poppins',
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff3c8a3c),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ),

              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                width: 150,
                height: 230,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/menu/ketchup.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            icon: Icon(
                              isFavorited
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: isFavorited ? Colors.red : null,
                            ),
                            onPressed: () {
                              setState(() {
                                isFavorited = !isFavorited;
                              });
                              // Handle favorite icon tap
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              'Ketchup',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Image.asset(
                              'assets/icons/veg.png',
                              width: 15,
                            ),
                          )
                        ],
                      ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      SizedBox(
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Add',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'poppins',
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '+19',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'poppins',
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff3c8a3c),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ),

              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                width: 150,
                height: 230,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/menu/hummus.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            icon: Icon(
                              isFavorited
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: isFavorited ? Colors.red : null,
                            ),
                            onPressed: () {
                              setState(() {
                                isFavorited = !isFavorited;
                              });
                              // Handle favorite icon tap
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              'Hummus',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Image.asset(
                              'assets/icons/veg.png',
                              width: 15,
                            ),
                          )
                        ],
                      ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      SizedBox(
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Add',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'poppins',
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '+19',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'poppins',
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff3c8a3c),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ),

              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                width: 150,
                height: 230,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/menu/pesto-dip.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            icon: Icon(
                              isFavorited
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: isFavorited ? Colors.red : null,
                            ),
                            onPressed: () {
                              setState(() {
                                isFavorited = !isFavorited;
                              });
                              // Handle favorite icon tap
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              'Pesto',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Image.asset(
                              'assets/icons/veg.png',
                              width: 15,
                            ),
                          )
                        ],
                      ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      SizedBox(
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Add',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'poppins',
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '+19',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'poppins',
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff3c8a3c),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ),
              //new container here
            ],

          ),
        ),
      ),
    );
  }
}
