import 'package:flutter/material.dart';


const Ktext_color = Color(0xFF7F7F7F);

const Ksmall_text_color = Color(0xFFD2D2D2);

const Kbtn_color = Color(0xFFFF5A5A);

var Kcontainer_decoration = BoxDecoration(
                            color: Color(0xFFFDF6F0),
                            borderRadius: BorderRadius.circular(20.0),
                          );



class view_status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 15.0,
      left: 10.0,
      child: Row(
        children: [
          Icon(Icons.remove_red_eye, color: Colors.white,size: 15.0,),
          Text("128", style: TextStyle(fontSize: 10.0, color: Colors.white),),
        ],
      ),
    );
  }
}