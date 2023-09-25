import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/main.dart';
import 'package:shared_preferences/shared_preferences.dart';


// ignore: camel_case_types
class screenLogin extends StatefulWidget {
  screenLogin({super.key});




  @override
  State<screenLogin> createState() => _screenLoginState();
}

class _screenLoginState extends State<screenLogin> {

  final _usernameController = TextEditingController();

final _passwordController = TextEditingController();
final _formkey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              
             TextFormField(
              validator: (value){
                if (value== null || value.isEmpty 
                
                ){
                  return "field is empty";
                }
              },
            controller: _usernameController,
              decoration: const  InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'username',
                
              ),
             
            
             ),
                   const  SizedBox(height: 20,),
             TextFormField(
               validator: (value){
                if (value== null || value.isEmpty){
                  return "field is empty";
                }
              },
              
              controller:_passwordController,
              obscureText:true ,
               decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'password',
                
              ),
             ),
               const  SizedBox(height: 16,),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
           
                   ElevatedButton.icon(
                  
                    onPressed: () {
                      if(_formkey.currentState!.validate()){
                        checklogin(context);
                      }
          
          
          
                    }, 
                   icon: const Icon(Icons.check),
                   
                    label: const Text('login'),
                    
                    
                    ),
                 ],
               ),
             ),
              
            ],
            ),
          ),
        ),
      ),
   
    );
    
  }
  void checklogin(BuildContext ctx) async {
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    if(_username ==_password){
      Navigator.push(context, MaterialPageRoute(builder: (context) => listscreen(),),);
    }
    else{
      final _errormessage = 'username password doesnot match';

       final _sharedprefs = await SharedPreferences.getInstance();
      await  _sharedprefs.setBool(SAVE_KEY_NAME, true);



      //snackbar
      ScaffoldMessenger.of(ctx)
      .showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(10),
        backgroundColor: const Color.fromARGB(255, 193, 27, 15),
        
        content: Text(_errormessage),
        duration: Duration(seconds: 6),
        ),
        );
     
    }
  }
}