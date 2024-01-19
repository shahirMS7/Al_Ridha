import 'package:alridafrieds/deliveryboy_app/DLProfile.dart';
import 'package:alridafrieds/deliveryboy_app/Dl%20notification.dart';
import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff911f2a),
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            'Orders',
            style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Color(0xff66161d),
                borderRadius: BorderRadius.circular(30),
              ),
              child:Center(
                child: IconButton(icon: ImageIcon(AssetImage('assets/delivryboy/icon/bell.png'),
                  size: 30,
                  color: Colors.white,
                ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>DlNotification()),);
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Color(0xff66161d),
                borderRadius: BorderRadius.circular(30),
              ),
              child:Center(
                child: IconButton(icon: ImageIcon(AssetImage('assets/delivryboy/icon/user icon.png'),
                  size: 30,
                  color: Colors.white,
                ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>DlProfile()),);
                  },
                ),
              ),
            ),
          ),
        ],
      ),



      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children:[ Column(

            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 150,
                    width: 340,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all()
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Text('Order No:#002',style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),),
                              Text('2 min ago',style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff66161d),
                              ),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Divider(
                            height: 1,

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text('Address',style: TextStyle(
fontSize: 15
                              ),),
                            ],
                          ),
                        ),
                      ],
                    ),

                  ),
                  SizedBox(width: 10,),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 150,
                    width: 340,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all()
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Text('Order No:#001',style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              ),),
                              Text('1 min ago',style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff66161d),
                              ),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Divider(
                            height: 1,

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text('Address',style: TextStyle(
                                  fontSize: 15
                              ),),
                            ],
                          ),
                        ),
                      ],
                    ),

                  ),
                  SizedBox(width: 10,),
                ],
              ),
            ],
          ),],
        ),
      ),
    );
  }
}
