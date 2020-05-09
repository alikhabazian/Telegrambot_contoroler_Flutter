import 'package:flutter/material.dart';
import 'package:telegromcontoroler/services/my_them.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWorldTime() async {
    print('why?');
    final prefs = await SharedPreferences.getInstance();
    print('fuck');
    List<String> aa= await prefs.getStringList('a');
    print(aa);
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'list':aa,

    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return My_them(
      title_appbar: 'loading',
      body: Center(
          child: SpinKitFadingCube(
            color: Colors.white,
            size: 50.0,
          )
      ),
    );
  }
}
