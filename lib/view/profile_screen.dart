import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/ShoeModel.dart';
import 'package:flutter_application_1/view/HomePage.dart';
import 'package:flutter_application_1/view/notifications.dart';
import 'package:google_fonts/google_fonts.dart';

import 'FavouriteScreen.dart';
import 'edit_profile_screen.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<Shoe> favoriteItems = [];
  TextEditingController nameController = TextEditingController();
  TextEditingController emailAddress = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          //leading: const Icon(Icons.arrow_back_ios_sharp),
          title: Text(
            "Profile",
            style:
                GoogleFonts.raleway(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const EditProfile();
                      },
                    ),
                  );
                },
                child: Text(
                  "Edit",
                  style: GoogleFonts.raleway(
                      fontSize: 20,
                      color: const Color.fromRGBO(13, 110, 253, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
          centerTitle: true,
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 105,
              top: 20,
              right: 100,
            ),
            child: Container(
              height: 90,
              width: 95,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: const Icon(
                Icons.add_a_photo_rounded,
                color: Colors.white,
                size: 35,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your Name",
                    style: GoogleFonts.raleway(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: nameController,
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(43, 43, 43, 1)),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(19),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text("Email Address",
                      style: GoogleFonts.raleway(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600)),
                  const SizedBox(height: 10),
                  TextField(
                    controller: emailAddress,
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(43, 43, 43, 1)),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(19),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text("Password",
                      style: GoogleFonts.raleway(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600)),
                  const SizedBox(height: 10),
                  TextField(
                    controller: password,
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(43, 43, 43, 1)),
                    decoration: InputDecoration(
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(19),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                      height: 30,
                      alignment: Alignment.topRight,
                      child: Text("Recovery Password",
                          style: GoogleFonts.raleway(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(112, 123, 129, 1)))),
                  const SizedBox(height: 25),
                  Container(
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: const Color.fromRGBO(13, 110, 253, 1),
                    ),
                    child: Text(
                      "Save Now",
                      style: GoogleFonts.raleway(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
          child: Container(
            height: 60,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Homepage()),
                      );
                    },
                    child: const Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) {
                          return FavoritesScreen(favoriteItems: favoriteItems);
                        }),
                      );
                    },
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) {
                          return const Notifications();
                        }),
                      );
                    },
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) {
                          return const Profile();
                        }),
                      );
                    },
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 25,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
