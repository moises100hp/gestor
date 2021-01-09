import 'package:flutter/material.dart';
import 'package:pedidodeliveryapp/screens/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFdbc9f2),
                Color(0xFFffffff),
                Color(0xFFdbc9f2),
              ])),
      child: Center(
        child: Image.asset(
            'assets/logo_pdvFlow.png',
            alignment: Alignment.center,
            width: 350,
          ),
        //],
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3)).then((_) => {
     Navigator.of(context).pushReplacement(
       MaterialPageRoute(builder: (context) => Login())
     )
    });
  }
}
