import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/view/checkout.dart';


class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
             Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 20,
                    color: Color.fromRGBO(43, 43, 43, 1),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "My Cart",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color.fromRGBO(43, 43, 43, 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              "3 Item",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Color.fromRGBO(26, 37, 48, 1),
              ),
            ),
            const SizedBox(height: 20),

            ///FIRST CARD
            Row(
              children: [
                Container(
                  height: 120,
                  width: 60,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(13, 110, 253, 1),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.add,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      Text(
                        " 1",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                      Icon(
                        Icons.remove,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: const Color.fromRGBO(247, 247, 249, 1),
                          child: Image.asset("assets/images/club_max_shoe.png"),
                        ),
                        const SizedBox(width: 20),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nike Club Max",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Color.fromRGBO(26, 37, 48, 1),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "₹584.95",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color.fromRGBO(26, 37, 48, 1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),

            ///SECOND CARD
            Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: const Color.fromRGBO(247, 247, 249, 1),
                    child: Image.asset("assets/images/air_max_200_shoe.png"),
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nike Air Max 200",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color.fromRGBO(26, 37, 48, 1),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "₹94.05",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromRGBO(26, 37, 48, 1),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 100,
                    width: 60,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(255, 25, 0, 1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/images/delete_icon.png"),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            ///THIRD CARD
            Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: const Color.fromRGBO(247, 247, 249, 1),
                    child: Image.asset("assets/images/air_max_270_shoe.png"),
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nike Air Max 270 Essential",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color.fromRGBO(26, 37, 48, 1),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "₹74.95",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromRGBO(26, 37, 48, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            ///TOTAL COST
            const SizedBox(height: 120),
            Column(
              children: [
                const Row(
                  children: [
                    Text(
                      "Subtotal",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color.fromRGBO(112, 123, 129, 1),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "₹753.95",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color.fromRGBO(26, 37, 48, 1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Text(
                      "Delivery",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color.fromRGBO(112, 123, 129, 1),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "₹60.20",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color.fromRGBO(26, 37, 48, 1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color.fromRGBO(112, 123, 129, 1),
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Text(
                      "Total Cost",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color.fromRGBO(43, 43, 43, 1),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "₹814.15",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color.fromRGBO(13, 110, 253, 1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                ///CHECKOUT BUTTON
                GestureDetector(
                  onTap:() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context){
                          return const Checkout();
                        },
                      )
                    );
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(13, 110, 253, 1),
                    ),
                    child: const Center(
                      child: Text(
                        "Checkout",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
