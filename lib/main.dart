

import 'package:flutter/material.dart';
import 'pages/edit_my_bots.dart';
import 'pages/mybots.dart';
import 'pages/loding.dart';
void main() => runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => My_bots(),
      '/home': (context) => Myboots(),
      '/loding': (context)=>Loading(),
//      '/location': (context) => ChooseLocation(),
    }
));

