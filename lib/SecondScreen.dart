import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 300,
                height: 200,
                child: Text(
                  "Welcome back! \nGlad to see you,\n Again!",
                  style: GoogleFonts.sora(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Container(
                width: 299,
                height: 51,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your Email',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(color: Color(0xFFC67C4E)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 299,
                height: 51,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your Password',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(color: Color(0xFFC67C4E)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: AlignmentGeometry.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: GoogleFonts.dmSerifDisplay(fontSize: 14),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Color(0xffC67C4E)),
                    textStyle: WidgetStateProperty.all(TextStyle(fontSize: 20)),
                    padding: WidgetStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 20,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  'Or',
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 14,
                    color: Color(0xff6A707C),
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Color(0xffffffff)),
                    textStyle: WidgetStateProperty.all(TextStyle(fontSize: 20)),
                    padding: WidgetStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 90, vertical: 20),
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: Text(
                    'Sign in with Google',
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 14,
                      color: Color(0xff6A707C),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),

              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Don't have an account?",
                      style: GoogleFonts.urbanist(
                        fontSize: 14,
                        color: Color(0xff6A707C),
                      ),
                    ),
                    TextSpan(
                      text: "Register Now",
                      style: GoogleFonts.urbanist(
                        fontSize: 14,
                        color: Color(0xffC67C4E),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
