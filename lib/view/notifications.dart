import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/ShoeModel.dart';
import 'package:flutter_application_1/view/FavouriteScreen.dart';

import 'HomePage.dart';
import 'profile_screen.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<Shoe> favoriteItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 20,
                    color: Color.fromRGBO(43, 43, 43, 1),
                  ),
                ),
                const Center(
                  child: Text(
                    "Notifications",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color.fromRGBO(43, 43, 43, 1),
                    ),
                  ),
                ),
                Image.asset("assets/images/delete_icon_black.png"),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              "Recent",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Color.fromRGBO(43, 43, 43, 1),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 90,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(247, 247, 249, 1),
                    ),
                    child: Image.asset(
                      "assets/images/notification_shoe1.png",
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "We Have New Products With Offers",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color.fromRGBO(13, 110, 253, 1),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "\$364.95",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color.fromRGBO(43, 43, 43, 1),
                              ),
                            ),
                            SizedBox(width: 30),
                            Text(
                              "\$260.00",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color.fromRGBO(112, 123, 129, 1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "7 min ago",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color.fromRGBO(112, 123, 129, 1),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 90,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(247, 247, 249, 1),
                    ),
                    child: Image.asset(
                      "assets/images/notification_shoe2.png",
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "We Have New Products With Offers",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color.fromRGBO(43, 43, 43, 1),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "\$364.95",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color.fromRGBO(43, 43, 43, 1),
                              ),
                            ),
                            SizedBox(width: 30),
                            Text(
                              "\$260.00",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color.fromRGBO(112, 123, 129, 1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "40 min ago",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color.fromRGBO(112, 123, 129, 1),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Yesterday",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Color.fromRGBO(43, 43, 43, 1),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 90,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(247, 247, 249, 1),
                    ),
                    child: Image.asset(
                      "assets/images/notification_shoe3.png",
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "We Have New Products With Offers",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color.fromRGBO(43, 43, 43, 1),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "\$364.95",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color.fromRGBO(43, 43, 43, 1),
                              ),
                            ),
                            SizedBox(width: 30),
                            Text(
                              "\$260.00",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color.fromRGBO(112, 123, 129, 1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "40 min ago",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color.fromRGBO(112, 123, 129, 1),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 90,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(247, 247, 249, 1),
                    ),
                    child: Image.asset(
                      "assets/images/notification_shoe4.png",
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "We Have New Products With Offers",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color.fromRGBO(43, 43, 43, 1),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "\$364.95",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color.fromRGBO(43, 43, 43, 1),
                              ),
                            ),
                            SizedBox(width: 30),
                            Text(
                              "\$260.00",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color.fromRGBO(112, 123, 129, 1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "40 min ago",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color.fromRGBO(112, 123, 129, 1),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
                                favoriteItems: favoriteItems,
                              )),
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
