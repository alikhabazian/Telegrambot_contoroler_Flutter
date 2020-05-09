import 'package:flutter/material.dart';
import 'package:telegromcontoroler/services/my_them.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Myboots extends StatefulWidget {
  @override
  _MybootsState createState() => _MybootsState();
}

class _MybootsState extends State<Myboots> {

  Map a ={};
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    print('a');
    a = a.isNotEmpty ?a : ModalRoute.of(context).settings.arguments;
    print(a);
    print(a['list'].length);
    return My_them(
      title_appbar: 'My boots',
      body: ListView.builder(
        itemCount: (a['list'].length/2).toInt(),
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(

              child: ListTile(
                title:Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
                  child: Text(
                    'token:'+a['list'][2*index.toInt()+1],
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.grey,

                    ),
                  ),
                ) ,
                leading: Text(a['list'][2*index.toInt()]),



              )
            ),
          );
        },

      ),
    );
  }
}
