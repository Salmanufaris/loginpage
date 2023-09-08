import 'package:flutter/material.dart';
import 'package:flutter_application_2/login.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<splashscreen> {

@override
  void initState() {
  gotoLoginpage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(body: Center(
      child: Container(
      
      
        child: Image.asset('asset/images/tulip.jpg', height: 500,),),
    ),);
  }
Future <void> gotoLoginpage() async{
await Future.delayed(Duration(seconds: 2)
);
Navigator.of(context).push(MaterialPageRoute(builder: (context) => screenLogin()
),
);
}
  }
  
