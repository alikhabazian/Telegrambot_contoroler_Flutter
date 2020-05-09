import 'package:flutter/material.dart';
import 'package:telegromcontoroler/services/my_them.dart';
import 'package:telegromcontoroler/services/telegram  api.dart';
//import 'package:path_provider/path_provider.dart';
//import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';

//
//Future<String> get _localPath async {
//  final directory = await getApplicationDocumentsDirectory();
//  // For your reference print the AppDoc directory
//  print(directory.path);
//  return directory.path;
//}
//Future<File> get _localFile async {
//  final path = await _localPath;
//  return File('$path/data.txt');
//}













class My_bots extends StatefulWidget {
  @override
  _My_botsState createState() => _My_botsState();
}

class _My_botsState extends State<My_bots> {
  final name_Controller = TextEditingController();
  final token_Controller = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _formtoken = GlobalKey<FormState>();
  final _formname = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return My_them(title_appbar: "Add your bot",
      body: Form(
        key: _formKey,

        child: Column(
          textBaseline:TextBaseline.alphabetic ,
          children: <Widget>[
            TextFormField(
              controller: name_Controller ,
              key: _formname,
              decoration: InputDecoration(
                  labelText: 'your bot name',
              ),
              validator: (value){
                return null;
              },

            ),
            TextFormField(
              key: _formtoken,
              controller: token_Controller,
              maxLength: 80,
              minLines: 2,
              maxLines: 2,
              decoration: InputDecoration(
                labelText: 'your token',
              ),

            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical:40.0),
              child: RaisedButton(
                color: Colors.deepPurple[100],
                onPressed: () async  {
                  bool  a=await check_bot(token: token_Controller.text);
                  print(a);
                  if(a){
                    final prefs = await SharedPreferences.getInstance();
                    print(prefs.getKeys());

                    List<String> aa=[name_Controller.text,token_Controller.text,];
                    final s=prefs.getStringList('a');
                    aa.insertAll(0, s);
                    print(aa);
                    prefs.setStringList('a',aa);
                    print('saved');

                    Navigator.pushReplacementNamed(context, '/loding');
                  }


                },
                child: Text('Add bot'),
              ),
            ),

          ],
        ),
      )
      ,);
  }
}
