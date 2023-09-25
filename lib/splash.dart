

import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';

import 'package:flutter_application_2/login.dart';
import 'package:flutter_application_2/main.dart';
import 'package:shared_preferences/shared_preferences.dart';



class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<splashscreen> {
@override
       void initState() {
CheckUserLoggedIn();
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Colors.lime,
      body: Center(
      child: Container(
      
      
        child: Image.asset('asset/images/tulip.jpg', height: 500,),),
        
    ),);
  }

  
Future <void> gotoLoginpage() async{
 
await Future.delayed(Duration(seconds: 2)

);
Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => screenLogin()
),
);

}
 Future<void> CheckUserLoggedIn() async {
  final _sharedprefs = await SharedPreferences.getInstance();   
  final _userLoggedIn = _sharedprefs.getBool(SAVE_KEY_NAME);
   if(_userLoggedIn == null || _userLoggedIn == false){
     gotoLoginpage();
  }
   else{
     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx1) =>listscreen() ));
   }
}
}
  

  
  
