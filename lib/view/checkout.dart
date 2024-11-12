import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
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
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 20,
                    color: Color.fromRGBO(43, 43, 43, 1),
                  ),
                ),
                const Expanded(
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
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 40),
                      const Text(
                        "Contact Information",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color.fromRGBO(26, 37, 48, 1),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/images/email_icon.png"),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "emmanueloyiboke@gmail.com",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color.fromRGBO(26, 37, 48, 1),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Email",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color.fromRGBO(112, 123, 129, 1),
                                ),
                              ),
                            ],
                          ),
                          const Icon(Icons.edit_outlined),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/images/call_icon.png"),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "+234-811-732-5298",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color.fromRGBO(26, 37, 48, 1),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Phone",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color.fromRGBO(112, 123, 129, 1),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 35),
                          const Icon(Icons.edit_outlined),
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        "Address",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color.fromRGBO(26, 37, 48, 1),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "1082 Airport Road, Nigeria",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color.fromRGBO(112, 123, 129, 1),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        margin: const EdgeInsets.only(left: 35),
                        width: MediaQuery.of(context).size.width,
                        child: Stack(
                          children: [
                            Image.asset("assets/images/map_img.png"),
                            Image.asset("assets/images/map_background.png"),
                            Center(
                              child: Column(
                                children: [
                                  const SizedBox(height: 10),
                                  const Text(
                                    "View Map",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                  Image.asset(
                                      "assets/images/map_location_icon.png"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Payment Method",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color.fromRGBO(26, 37, 48, 1),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Image.asset("assets/images/payment_icon.png"),
                          const SizedBox(width: 15),
                          const Column(
                            children: [
                              Text(
                                "Debit Card",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color.fromRGBO(26, 37, 48, 1),
                                ),
                              ),
                              Text(
                                ".....0696 4629",
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
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(),

            ///TOTAL COST
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
                GestureDetector(
                  onTap: () {},
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
