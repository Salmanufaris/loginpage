import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/login.dart';
import 'package:shared_preferences/shared_preferences.dart';


class listscreen extends StatelessWidget {
  const listscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: false,
        

          title: Text('List'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){
             
              signout(context);
            },
             icon: Icon(Icons.logout)),
          ],
        ),
       body: ListView.builder(
          itemCount: 10,         
           itemBuilder: (BuildContext context,int index){
            return ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text('name'),
              trailing: Icon(Icons.edit),
              subtitle: Text('Age: $index'),
            );
          }), 

          
  
           
      ),
      
    );
   
      
  }
   signout(BuildContext ctx)async{


   final _sharedprefs = await SharedPreferences.getInstance();
   await _sharedprefs.clear();
     
  
     Navigator.of(ctx).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx1) =>screenLogin()), (route) => false);

   }
}