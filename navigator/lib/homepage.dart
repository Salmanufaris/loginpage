import 'package:flutter/material.dart';
import 'package:navigator/about.dart';
import 'package:navigator/product.dart';




class navigation extends StatelessWidget {
  const navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar//
      appBar: AppBar(

        //text//
        title: Text('navigation'),
        centerTitle: true,
        //bg//
        backgroundColor: Colors.green,
        //leading//
        leading: Icon(Icons.home),

        //actions//
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),

          //elevation//
          
        ],
        elevation: 40,

        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            ElevatedButton(
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => productscreen(),));
              },
             child: Text(
              'product page', 
              style: TextStyle(fontSize: 20),)),
              SizedBox(height: 10,),

  ElevatedButton(
    onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => aboutscreen(),));
    },
             child: Text(
              'About page', 
              style: TextStyle(fontSize: 20),)),

 
          ],
        ),
      ),
    );
  }
}