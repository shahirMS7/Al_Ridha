
import 'package:alridafrieds/user/menu/ItemDetails.dart';
import 'package:flutter/material.dart';

class Breads extends StatelessWidget {
  const Breads ({super.key});

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    List<Map<String, dynamic>> items = [
      {
        'title': 'Bun',
        'image': 'assets/menu/bun.jpg',
        'price':'+9',
        'page': ItemDetails(title:'Bun',image:'assets/menu/bun.jpg' ,price:'+9',discription: 'Bun',)
      },
      {
        'title': 'Kuboose',
        'image': 'assets/menu/kuboose.jpg',
        'price':'+9',
        'page': ItemDetails(title:'Kuboose',image:'assets/menu/kuboose.jpg' ,price:'+9',discription: 'Kuboose',)
      },
      {
        'title': 'Butter Bread',
        'image': 'assets/menu/buttur-rotti-min.jpg',
        'price':'+19',
        'page': ItemDetails(title:'Butter Bread',image:'assets/menu/buttur-rotti-min.jpg' ,price:'+19',discription: 'Butter Bread',)
      },
      {
        'title': 'Garlic Bread',
        'image': 'assets/menu/garlic-bread-min.jpg',
        'price':'+19',
        'page': ItemDetails(title:'Garlic Bread',image:'assets/menu/garlic-bread-min.jpg' ,price:'+19',discription: 'Garlic Bread',)
      },

    ];
    return Container(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 4.4/ 5,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => items[index]['page'],
                    ));
              },
              child: Container(
                // margin: EdgeInsets.symmetric(horizontal: Width),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: Width*0.005,vertical: Height*0.005),
                      height: Height*0.145,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage(
                              items[index]['image'],
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    // SizedBox(
                    //   height: Height*0.006,
                    // ),
                    Spacer(),
                    Row(

                      children: [
                        SizedBox(width: Width*0.005,),
                        Text(
                          items[index]['title'],
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/icons/veg.png',
                          width: Height*0.018,
                        ),
                        SizedBox(width: Width*0.008,),
                      ],
                    ),
                    // SizedBox(
                    //   height: 5,
                    // ),
                    Spacer(),
                    SizedBox(

                      height: Height*0.05,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: Width*0.005),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              Spacer(),
                              Text(
                                items[index]['price'],
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
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),

                  ],
                ),

              ),
            );
          },
        )
      //             GridView.builder(
      //                 gridDelegate:
      //                     SliverGridDelegateWithFixedCrossAxisCount(
      //                         crossAxisCount: 3,
      //                         crossAxisSpacing: 20,
      //                         mainAxisSpacing: 20,
      //                         childAspectRatio: 6 / 3.4),
      //                 children: [

      //
      //   ],
      // ),
    );
  }
}
