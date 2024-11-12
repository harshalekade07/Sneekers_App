import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/ShoeModel.dart';
import 'package:flutter_application_1/view/notifications.dart';
import 'package:flutter_application_1/view/profile_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'HomePage.dart';

class FavoritesScreen extends StatefulWidget {
  final List<Shoe> favoriteItems;

  // Constructor to receive the favorite items list
  const FavoritesScreen({Key? key, required this.favoriteItems})
      : super(key: key);

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Your Favorites")),
      body: ListView.builder(
        itemCount: widget.favoriteItems.length,
        itemBuilder: (context, index) {
          Shoe shoe = widget.favoriteItems[index];
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 229,
                  width: 165,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color.fromRGBO(255, 255, 255, 1)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.favorite, color: Colors.red),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 13, left: 10),
                        width: 157,
                        height: 110,
                        child: Image.asset(shoe.imagePath),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text(
                          shoe.name,
                          style: GoogleFonts.raleway(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(43, 43, 43, 1)),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, bottom: 8),
                        child: Text(
                          shoe.price,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(43, 43, 43, 1)),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
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
                          builder: (context) => const Homepage()
                              ),
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
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FavoritesScreen(
                          favoriteItems: widget.favoriteItems,
                        ),
                      ),
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
    );
  }
}
