import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
 final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Center(
                child: Text(
                  "Register Account",
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w700,
                    fontSize: 32,
                    color: const Color.fromRGBO(43, 43, 43, 1),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Fill your details or continue with social media",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: const Color.fromRGBO(112, 123, 129, 1),
                ),
              ),
              const SizedBox(height: 40),
              Text(
                "Your Name",
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: const Color.fromRGBO(43, 43, 43, 1),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _nameController,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: const Color.fromRGBO(106, 106, 106, 1),
                ),
                decoration: const InputDecoration(
                  hintText: "Your Full Name",
                  hintStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Email Address",
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: const Color.fromRGBO(43, 43, 43, 1),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _emailController,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: const Color.fromRGBO(106, 106, 106, 1),
                ),
                decoration: const InputDecoration(
                  hintText: "xyz@gmail.com",
                  hintStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Password",
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: const Color.fromRGBO(43, 43, 43, 1),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _passwordController,
                obscureText: true,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: const Color.fromRGBO(106, 106, 106, 1),
                ),
                decoration: const InputDecoration(
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Color.fromRGBO(106, 106, 106, 1),
                  ),
                  hintText: "*********",
                  hintStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "Recovery Password",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: const Color.fromRGBO(112, 123, 129, 1),
                ),
              ),
              const SizedBox(height: 50),
              Container(
                height: 50,
                width: double.infinity,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "Register",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 50,
                width: double.infinity,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(247, 238, 238, 236),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "Sign In With Google",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color.fromRGBO(43, 43, 43, 1),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Have Account? ",
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: const Color.fromRGBO(43, 43, 43, 1),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Log In",
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: const Color.fromRGBO(43, 43, 43, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
