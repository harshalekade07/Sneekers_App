// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/ShoeModel.dart';
import 'package:flutter_application_1/view/edit_profile_screen.dart';
import 'package:flutter_application_1/view/my_cart.dart';
import 'package:flutter_application_1/view/profile_screen.dart';
//import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'FavouriteScreen.dart';
import 'ShoeDescription.dart';
import 'ShoeDescription2.dart';
import 'notifications.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State {
  List<Shoe> favoriteItems = [];

  ///List get getItems => _favoriteItems();
  void toggleFavourite(Shoe shoe) {
    setState(() {
      if (favoriteItems.contains(shoe)) {
        favoriteItems.remove(shoe);
      } else {
        favoriteItems.add(shoe);
      }
    });
  }

  // ignore: non_constant_identifier_names
  TextEditingController SearchController = TextEditingController();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FavoritesScreen(
                    favoriteItems: favoriteItems,
                  )),
        );
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Text(
            "Explore",
            style: GoogleFonts.raleway(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: const Color.fromRGBO(43, 43, 43, 1),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return const CartScreen();
                    }),
                  );
                },
                child: const Icon(Icons.shopping_cart_outlined)),
          ),
        ],
      ),

      ///SIDE MENU DRAWER
      drawer: Drawer(
        backgroundColor: const Color.fromRGBO(20, 131, 194, 1),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Image.asset("assets/images/UK_profile_img_icon.ico"),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Utkarsh Phalphale",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Image.asset("assets/images/profile_icon.png"),
              title: const Text(
                "Profile",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const Profile();
                  }),
                );
              },
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const CartScreen();
                  }),
                );
              },
              child: ListTile(
                leading: Image.asset("assets/images/my_cart_icon.png"),
                title: const Text(
                  "My Cart",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return FavoritesScreen(
                        favoriteItems: favoriteItems,
                      );
                    },
                  ),
                );
              },
              child: ListTile(
                leading: Image.asset("assets/images/favourites_icon.png"),
                title: const Text(
                  "Favorites",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Image.asset("assets/images/orders_icon.png"),
              title: const Text(
                "Orders",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Image.asset("assets/images/notifications_icon.png"),
                title: const Text(
                  "Notifications",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return Notifications();
                    }),
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const EditProfile();
                    },
                  ),
                );
              },
              child: ListTile(
                leading: Image.asset("assets/images/settings_icon.png"),
                title: const Text(
                  "Settings",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Image.asset("assets/images/signout_icon.png"),
              title: const Text(
                "Sign Out",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 60,
                    child: TextField(
                      controller: SearchController,
                      style: const TextStyle(
                        fontSize: 17,
                      ),
                      obscureText: false,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color.fromRGBO(106, 106, 106, 1),
                            weight: 14.33,
                          ),
                          hintText: "Looking for shoes",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color.fromRGBO(106, 106, 106, 1),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(14),
                              ),
                              borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue[700],
                    ),
                    child: Image.asset("assets/icons/sliders.png"))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 6),
            child: Text(
              "Select Category",
              style: GoogleFonts.raleway(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    width: 108,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 2),
                              color: Color.fromRGBO(0, 0, 0, 0.04)),
                        ]),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "All Shoes",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    width: 108,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 2),
                              color: Color.fromRGBO(0, 0, 0, 0.04)),
                        ]),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Outdoor",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    width: 108,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 2),
                              color: Color.fromRGBO(0, 0, 0, 0.04)),
                        ]),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Tennis",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    width: 108,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 2),
                              color: Color.fromRGBO(0, 0, 0, 0.04)),
                        ]),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Football",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23),
            child: Text(
              "Popular Shoes",
              style: GoogleFonts.raleway(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23),
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // First shoe container
                    Container(
                      height: 260,
                      width: 200,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Favorite icon (with color toggle)
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 10),
                            child: GestureDetector(
                              onTap: () {
                                toggleFavourite(Shoe(
                                  name: "Nike Jordan",
                                  imagePath:
                                      "assets/icons/Nike-Shoes-Jordan-PNG-Image.png",
                                  price: "\$301.00",
                                ));
                              },
                              child: Icon(
                                favoriteItems.contains(Shoe(
                                  name: "Nike Jordan",
                                  imagePath:
                                      "assets/icons/Nike-Shoes-Jordan-PNG-Image.png",
                                  price: "\$301.00",
                                ))
                                    ? Icons.favorite
                                    : Icons.favorite_outline_outlined,
                                color: favoriteItems.contains(Shoe(
                                  name: "Nike Jordan",
                                  imagePath:
                                      "assets/icons/Nike-Shoes-Jordan-PNG-Image.png",
                                  price: "\$301.00",
                                ))
                                    ? Colors.red
                                    : Color.fromRGBO(41, 45, 50, 1),
                              ),
                            ),
                          ),
                          // Shoe image and other details
                          Container(
                            padding: const EdgeInsets.only(left: 7),
                            height: 130,
                            width: 180,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Shoedescription()),
                                );
                              },
                              child: Image.asset(
                                  "assets/icons/Nike-Shoes-Jordan-PNG-Image.png"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 6),
                            child: Text(
                              "BEST SELLER",
                              style: TextStyle(
                                  color: Colors.blue[400],
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, top: 6),
                            child: Text(
                              "Nike Jordan",
                              style: TextStyle(
                                  color: Color.fromRGBO(106, 106, 106, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 10, top: 6),
                                child: Text(
                                  "\$301.00",
                                  style: TextStyle(
                                      color: Color.fromRGBO(44, 43, 43, 1),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              const Spacer(),
                              Container(
                                height: 37,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      bottomRight: Radius.circular(12)),
                                  color: Colors.blue[800],
                                ),
                                child: GestureDetector(
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 20),
                    // Second shoe container (similar to the first)
                    Container(
                      height: 260,
                      width: 200,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Favorite icon (with color toggle)
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 10),
                            child: GestureDetector(
                              onTap: () {
                                toggleFavourite(Shoe(
                                    name: "Nike Air Max",
                                    imagePath:
                                        "assets/icons/pngwing.com (1).png",
                                    price: "\$752.00")); // Item name here
                              },
                              child: Icon(
                                favoriteItems.contains(Shoe(
                                        name: "Nike Air Max",
                                        imagePath:
                                            "assets/icons/pngwing.com (1).png",
                                        price: "\$752.00"))
                                    ? Icons.favorite
                                    : Icons.favorite_outline_outlined,
                                color: favoriteItems.contains(Shoe(
                                        name: "Nike Air Max",
                                        imagePath:
                                            "assets/icons/pngwing.com (1).png",
                                        price: "\$752.00"))
                                    ? Colors.red
                                    : Color.fromRGBO(41, 45, 50, 1),
                              ),
                            ),
                          ),
                          // Shoe image and other details
                          Container(
                            padding: const EdgeInsets.only(left: 7),
                            height: 130,
                            width: 180,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Shoedescription2()),
                                );
                              },
                              child: Image.asset(
                                  "assets/icons/pngwing.com (1).png"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 6),
                            child: Text(
                              "BEST SELLER",
                              style: TextStyle(
                                  color: Colors.blue[400],
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, top: 6),
                            child: Text(
                              "Nike Air Max",
                              style: TextStyle(
                                  color: Color.fromRGBO(106, 106, 106, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 10, top: 6),
                                child: Text(
                                  "\$752.00",
                                  style: TextStyle(
                                      color: Color.fromRGBO(44, 43, 43, 1),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              const Spacer(),
                              Container(
                                height: 37,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      bottomRight: Radius.circular(12)),
                                  color: Colors.blue[800],
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              "New Arrivals",
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w600, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
            ),
            child: Container(
              width: 335,
              height: 105,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: Column(
                      children: [
                        Text(
                          "Summer Sale",
                          style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: const Color.fromRGBO(59, 59, 59, 1)),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text(
                          "15% OFF",
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 36,
                              color: Color.fromRGBO(103, 77, 197, 1)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.48,
                    height: 16.7,
                    child: Image.asset("assets/icons/Vector.png"),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 7),
                    height: 100,
                    width: 180,
                    child: Image.asset("assets/icons/pngwing.com (1).png"),
                  ),
                ],
              ),
            ),
          )
        ],
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
                    _onItemTapped(0);
                  },
                  child: const Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _onItemTapped(1);
                  },
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
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
                    Navigator.of(context).push(
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
