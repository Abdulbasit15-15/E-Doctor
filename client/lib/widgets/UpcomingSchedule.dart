import 'package:flutter/material.dart';
class UpcomingSchedule extends StatelessWidget {
  const UpcomingSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Text(
          "About doctor",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
          SizedBox(height: 15),
          Container( 
            padding:EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration( 
              color:Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color:Colors.black12,
                  blurRadius: 4,
                  spreadRadius: 2,
                )
              ]
            ),
            child: SizedBox( 
              width:MediaQuery.of(context).size.width,
              child:Column(
                children:[
                  ListTile(
                    title:Text( 
                      "DR name",
                      style:TextStyle( 
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  subtitle: Text("therapist"),
                  trailing:CircleAvatar(  
                    radius:25,
                    backgroundImage: AssetImage("images/doctor1.jpg"),
                  )
                  
                  
                  
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal:30),
                  child:Divider( 
                    thickness:1,
                    height:20,
                  ),
                  ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: []
                      ),
                  Icon(  
                    Icons.calendar_month,
                    color:Colors.black54,
                  ),
                  SizedBox(width: 5),
                  Text(  
                    "12/01/2023",
                    style: TextStyle( 
                      color: Colors.black54,
                    ),
                    ),
                  ],
                 ),
                 Row(
                  children: [
                  Icon(  
                    Icons.access_time_filled,
                    color:Colors.black54,
                  ),
                  SizedBox(width: 5),
                  Text( 
                    "10:30 AM",
                    style: TextStyle( 
                      color:Colors.black54,
                    ),
                  ),
                  ],
                 ),
                ],
              )
            ),
          ),
      ],
        ),
    
    
    );
  }
}