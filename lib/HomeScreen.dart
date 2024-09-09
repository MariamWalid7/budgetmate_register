import 'package:budgetmate_register/RegisterPage.dart';
import 'package:flutter/material.dart';
import 'package:budgetmate_register/LoginPage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
       //backgroundColor: Color(0xFFF3F8FA),
        child: Stack(
        children: [
          Positioned.fill(
            child: CustomPaint(
              painter: BackgroundCirclesPainter(),
            ),
          ),
          // Top Right Icon
          Positioned(
            top: 100,
            right: 30,
            child: Image.asset(
              'assets/pie_chart_icon.png',
              width: 60,
              height: 60,
            ),
          ),
          Positioned(
            top: 450,
            left: 40,
            child: Image.asset(
              'assets/dollar_icon.png',
              width: 60,
              height: 60,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height:200),
              Center(
                child: Text(
                  "Spend Smarter\nSave More",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF4E9A7D),
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 350),
              // Get Started Button
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF42BBA4), Color(0xFF209D86)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF209D86),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>RegisterPage()));
                  },
                  child: Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Log In Text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Have Account? ",
                    style: TextStyle(
                      color: Color(0xFF4C6F6A),
                      fontSize: 14,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        color: Color(0xFF209D86),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      ),
    );
  }
}

class BackgroundCirclesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xFFE5F2F0)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    final center = Offset(size.width / 2, size.height / 2);
    final maxRadius = size.width * 0.8;

    for (double radius = maxRadius; radius > 0; radius -= maxRadius / 4) {
      canvas.drawCircle(center, radius, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
