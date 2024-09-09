import 'package:flutter/material.dart';
import 'package:budgetmate_register/LoginPage.dart';

class RegisterPage extends StatefulWidget{
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 40), // Add padding for top content
              const Text(
                'BudgetMate',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4E9A7D),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Create an account!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              const Text(
                'Manage Your Financial Expenses today.',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              const SizedBox(height: 24),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your username',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14,),
                  labelText: 'Username',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF4E9A7D))
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter you email',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  labelText: 'Email Address',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Please Enter Your Password',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  labelText: 'Password',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF4E9A7D))
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Please Confirm Your Password',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  labelText: 'Password Confirmation',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF4E9A7D))
                  ),
                ),
              ),
              const SizedBox(height: 200),
              ElevatedButton(
                onPressed: (){

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF209D86),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text('Register', style: TextStyle(fontSize: 20, color: Colors.white)),
              ),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>LoginPage()));
                },
                child: const Text(
                  'Already have an account? Login',
                  style: TextStyle(color: Colors.grey,fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}