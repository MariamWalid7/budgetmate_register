import 'package:budgetmate_register/HomeScreen.dart';
import 'package:budgetmate_register/RegisterPage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 40,),
                  Text('BudgetMate',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF4E9A7D),
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                  SizedBox(height: 24,),
                  Text('Hi, Welcome Back!',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text('Hello again, we missed you!',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 24,),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      hintText: 'Please Enter your username',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 18,),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Please Enter your Password',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 350,),
                  ElevatedButton(onPressed: (){

                  },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF209D86),
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                      child: Text('Login',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                  ),
                  SizedBox(height:20),
                  TextButton(onPressed: (){
                    Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (context)=>RegisterPage()),
                          (Route<dynamic> route) => false,
                    );
                  },
                      child: Text("Don't have an account?, Sign Up" ,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
