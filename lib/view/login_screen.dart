import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/HomePage.dart';
import 'package:flutter_application_1/view/customsnackbar.dart';
import 'package:flutter_application_1/view/register_screen.dart';
import 'package:google_fonts/google_fonts.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key, required email});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordtextEditingController =
      TextEditingController();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          child: Column(
            children: [
              const SizedBox(height: 70),
              Text(
                "Hello Again!",
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                  color: const Color.fromRGBO(43, 43, 43, 1),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Fill your details or continue with social media",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: const Color.fromRGBO(112, 123, 129, 1),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 280),
                child: Text(
                  "Email Address",
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: const Color.fromRGBO(43, 43, 43, 1),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                       controller: _emailTextEditingController,
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
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 315),
                child: Text(
                  "Password",
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: const Color.fromRGBO(43, 43, 43, 1),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: _passwordtextEditingController,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: const Color.fromRGBO(106, 106, 106, 1),
                  ),
                  decoration:  InputDecoration(
                    suffixIcon:GestureDetector(
                      onTap: () {
                        _showPassword = !_showPassword;
                        setState(() {});
                      },
                      child: Icon(
                        (_showPassword)
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Color.fromRGBO(106, 106, 106, 1),
                      ),
                    ),
                    hintText: "*********",
                    hintStyle: const TextStyle(
                      fontSize: 25,
                      color: Colors.grey,
                    ),
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
               /*GestureDetector(
                onTap: () async {
                  if (_emailTextEditingController.text.trim().isNotEmpty &&
                      _passwordtextEditingController.text.trim().isNotEmpty) {
                    try {
                      UserCredential userCredential =
                          await _firebaseAuth.signInWithEmailAndPassword(
                        email: _emailTextEditingController.text,
                        password: _passwordtextEditingController.text,
                      );

                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) {
                            return Homescreen(
                              email: userCredential.user!.email!,
                            );
                          },
                        ),
                      );
                    } on FirebaseAuthException catch (error) {
                     
                      CustomSnackbar.showCustomSnackbar(
                        message: error.code,
                        context: context,
                      );
                    }
                  }
                },
              ),*/
              Padding(
                padding: const EdgeInsets.only(left: 250),
                child: Text(
                  "Recovery Password",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: const Color.fromRGBO(112, 123, 129, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 335,
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
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const Homepage();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Log In",
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
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 335,
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
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 87),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        "New User?",
                        style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: const Color.fromRGBO(43, 43, 43, 1),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Register();
                        //setState(() {});

                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const Register();
                            },
                          ),
                        );
                      },
                      child: Container(
                        child: Text(
                          "Create Account",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: const Color.fromRGBO(43, 43, 43, 1),
                          ),
                        ),
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
