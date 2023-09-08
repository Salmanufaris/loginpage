import 'package:flutter/material.dart';

class listscreen extends StatelessWidget {
  const listscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('List'),
        ),
       body: ListView.builder(
          itemCount: 50,         
           itemBuilder: (BuildContext context,int index){
            return SingleChildScrollView(
              child: ListTile(
                leading: Icon(Icons.arrow_back),
                title: Text('name'),
                trailing: Icon(Icons.edit),
                subtitle: Text('Age: $index'),
              ),
            );
          }),

          
           
      ),
    );
      
  }
}