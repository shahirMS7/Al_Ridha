
import 'package:alridafrieds/deliveryboy_app/signin.dart';
import 'package:alridafrieds/user/auth/SignUp.dart';
import 'package:alridafrieds/user/auth/Signin.dart';
import 'package:flutter/material.dart';



class SignUporIn extends StatelessWidget {
  const SignUporIn({super.key});

  @override
  Widget build(BuildContext context) {
    final Height=MediaQuery.of(context).size.height;
    final Width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/friedBucket.jpg",
                ),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Height*0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: InkWell(
                      onTap: () {
                        _showOptionsDialog(context);
                      },
                      child: Container(
                        width: Width*0.12,
                        // height: Height*0.1,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffe3a95c)),
                        child: Center(
                          child: Image.asset(
                            "assets/icons/users.png", // Replace with your image asset
                            width: Width*0.06,
                            height: Height*0.06,//changed 30
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: Width*0.05,)
                ],
              ),
              SizedBox(
                height: Height*0.7,
              ),
              Container(
                  //Sign in button
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Height*0.03),
                    border: Border.all(width: Width*0.008),
                  ),
                  height: Height*0.06,
                  width: Width*0.65,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>Signin()),);
                      },
                      child: Container(
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                              fontSize: Height*0.025,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ))),
              SizedBox(
                height: Height*0.01,
              ),
              Container(
                //Sign in button
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(Height*0.03),
                ),
                height: Height*0.06,
                width: Width*0.65,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>Signup()),);
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => MyS));
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      color: Colors.white,
                      fontSize: Height*0.025,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showOptionsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select User type'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('Customer '),
                onTap: () {
                  // Handle Customer option click
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Delivery Boy'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>DlSignin()),);
                  // Handle Delivery Boy option click
                  // Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
