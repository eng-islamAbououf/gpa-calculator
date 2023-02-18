import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4) , (){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => HomeScreen())
      ) ;
    }); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        // Color.fromARGB(211, 226, 237, 1)
        color:  Colors.white.withRed(211).withBlue(237).withGreen(226),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.calculate ,
              color:Colors.white.withRed(36).withBlue(167).withGreen(112) ,
              size: MediaQuery.of(context).size.width/3,
            ),
            Text(
              "GPA Calculator" ,
              style: TextStyle(
                color:Colors.white.withRed(36).withBlue(167).withGreen(112) ,
                fontSize: 20,

            ),
            ),
          ],
        ),
      ),
    ) ;
  }
}
