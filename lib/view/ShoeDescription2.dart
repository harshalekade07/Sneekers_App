import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Shoedescription2 extends StatefulWidget {
  const Shoedescription2({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Shoediscription2();
  }
}

class _Shoediscription2 extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Sneaker Shop",
            style: GoogleFonts.raleway(
              fontWeight: FontWeight.w600,
              fontSize: 23,
              height: 20,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              child: Text(
                "The Nike Air Max Essential",
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                  //  height: 30.52,
                  color: const Color.fromRGBO(43, 43, 43, 1),
                ),
              ),
            ),
            
            Text(
              "Men's Shoes",
              style: GoogleFonts.raleway(
                fontWeight: FontWeight.w500,
                fontSize: 24,
                color: const Color.fromRGBO(112, 123, 129, 1),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text("\$ 752.00",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800)),
            Center(
              child: Container(
                height: 300,
                width: 400,
                child: Image.asset("assets/icons/pngwing.com (1).png"),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              height: 120,
              child: const Text(
                "The Nike Air Max is one of Nike's most iconic and long-standing footwear lines, first introduced in 1987. Known for its visible air-cushioning in the sole, the Air Max series combines innovation, comfort, and style  ",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color.fromRGBO(112, 123, 129, 1)),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 30, left: 53),
              child: Row(
                children: [
                  Container(
                    width: 55,
                    height: 55,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(217, 217, 217, 0.4),
                    ),
                    child: const Icon(
                      Icons.favorite_border_sharp,
                      size: 30,
                      color: Color.fromRGBO(43, 43, 43, 0.804),
                    ),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.blueAccent),
                    ),
                    child: Text(
                      "Add To Cart",
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
