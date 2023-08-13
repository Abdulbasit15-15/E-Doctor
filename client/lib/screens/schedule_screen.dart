import 'package:doctor/widgets/UpcomingSchedule.dart';
import 'package:flutter/material.dart';
class ScheduleScreen extends StatefulWidget{
  const ScheduleScreen({super.key});
  @override
  State<ScheduleScreen> createState() =>_ScheduleScreenState ();
    }

    class _ScheduleScreenState extends State<ScheduleScreen>{
      int _buttonIndex = 0;
      
      final _schedleWidgets=[
        
       UpcomingSchedule(),
       Center(child: Text("Completed"),),
       Center(child: Text("Canceled"),),
      
      ];

      @override
      Widget build(BuildContext context){
        return SingleChildScrollView(
          child:Padding(
          padding: EdgeInsets.only(top:40),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                "Schedule",
                style:TextStyle(
                fontSize:30,
                fontWeight:FontWeight.w500
                ),
                ) ,
                ),

            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration( 
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 
                  InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex=0;
                        
                      });
                    },
                    child: Container( 
                      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 25),
                      decoration: BoxDecoration( 
                        color: _buttonIndex==1?Color.fromARGB(
                          255, 208, 147, 219):
                          Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "upcoming",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ),
                  ),
                
                 InkWell(
                    onTap: (){
                       setState(() {
                        _buttonIndex=1;
                       });
                    },
                    child: Container( 
                      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 25),
                      decoration: BoxDecoration( 
                        color: _buttonIndex==1?Color.fromARGB(
                          255, 208, 147, 219):
                          Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "completed",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                 ),
                
                 InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex=2;
                      });
                    },
                    child: Container( 
                      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 25),
                      decoration: BoxDecoration( 
                        color: _buttonIndex==1?Color.fromARGB(
                          255, 208, 147, 219):
                          Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "canceled",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                 ),


                ],

              ),
            ),

          SizedBox(height: 30),
          _schedleWidgets[_buttonIndex],




            ],


          ),
          ),

          
          );
        
      }
    }
  
  
