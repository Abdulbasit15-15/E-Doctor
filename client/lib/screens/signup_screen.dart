import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class SignUpScreen extends StatefulWidget{
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context){
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 2),
              Padding(padding: EdgeInsets.all(2),
              child: Image.asset("images/doctors.png"),
              ),
              SizedBox(height: 0),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Full Name", 
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ), 
                ),
              ),
              
              Padding(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Email Address", 
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ), 
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Contact Number", 
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone),
                  ), 
                ),
              ),
              
              Padding(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 15),
                child: TextField(
                  obscureText: passToggle ? true : false,
                  decoration: InputDecoration(
                    labelText: "Create Pasword", 
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: InkWell(onTap: (){
                      if(passToggle == true){
                        passToggle = false;
                      }
                      else{
                        passToggle = true;
                      }
                      setState(() {
                        
                      });
                    },
                    child: passToggle 
                        ? Icon(CupertinoIcons.eye_slash_fill) 
                        : Icon(CupertinoIcons.eye_fill),
                    ),
                  ), 
                ),
              ),
              SizedBox(height: 10),
              Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: double.infinity,
                child: Material(
                  color: Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),

                  child: InkWell(
                    onTap: (){
                      // Navigator.push(
                      //    context, 
                      //    MaterialPageRoute(
                      //      builder: (context) => LoginScreen(),
                      //    ));
                    },
                    child: Padding(
                      padding: 
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40), 
                      child: Center(
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ), 
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have account?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          )); 
                    }, 
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7165D6),
                      ),
                      ),
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