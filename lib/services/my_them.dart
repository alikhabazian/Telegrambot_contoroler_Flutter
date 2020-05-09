import 'package:flutter/material.dart';

class My_them extends StatelessWidget {
  String title_appbar ;
  Widget body;
  My_them({this.title_appbar,this.body});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        title:Text(title_appbar,
          style: TextStyle(
            color: Colors.black,
            letterSpacing:2.0 ,
            fontSize: 30.0,
            fontWeight: FontWeight.w900
          ),
        ) ,
        backgroundColor:Colors.blue ,
        centerTitle:true ,
      ),
      body: Container(
          child: body,
          padding: EdgeInsets.fromLTRB(20, 10, 20, 5),

      ),
    );
  }
}
