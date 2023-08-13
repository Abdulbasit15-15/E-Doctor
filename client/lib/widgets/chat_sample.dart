import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';
class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 80),
        child:ClipPath( 
          clipper:UpperNipMessageClipper(MessageType.receive),
          child:Container(
            padding:EdgeInsets.all(20),
            decoration: BoxDecoration(
             color :Color(0XFFE1E1E2),
              ),
              child:Text(
                "How may i help you?",
                style: TextStyle( 
                fontSize: 16,
                ),
              ),
            ),
        ),
     ),
    
     Container(
      alignment: Alignment.centerRight,
      child: 
      Padding(
        padding: EdgeInsets.only(top: 20,left:80),
        child: ClipPath(
          clipper: LowerNipMessageClipper(MessageType.send),
          child:Container( 
            padding: EdgeInsets.only(left:20,top:10,bottom:25,right:20),
            decoration: BoxDecoration( 
              color:Color(0xFF7165D6)
     ),
     
     child:Text(
      "Hello doctor,are you available?",
      style: TextStyle(fontSize: 16,
      color:Colors.white
      ),
      )
     ),
     ),

          ),
        ),
   ],
    );
  }
}