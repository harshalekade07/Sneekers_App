
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Shoedescription extends StatefulWidget{
  const Shoedescription({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Shoediscription();
  }
}
class _Shoediscription extends State{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:Center(
          child: Text(
            "Sneaker Shop",
            style: GoogleFonts.raleway(
              fontWeight: FontWeight.w600,
              fontSize: 23,
              height: 20,
            ),
          ),
        ) ,
       
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 70,
              child: Text(
                "The Nike Air Jordan line Essential",
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                //  height: 30.52,
                  color:const Color.fromRGBO(43, 43, 43, 1),
                ),
                ),
            ),
           const SizedBox(
              height: 6,

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
            const Text(
              "\$ 301.00",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w800
              )
              
            ),
            Center(
              child: Container(
                height: 300,
                width: 400,
                child: Image.asset("assets/icons/Nike-Shoes-Jordan-PNG-Image.png"),
              ),
            ),
           const SizedBox(height: 7,),
           Container(
            height: 120,
             child: const Text(
              "The Nike Air Jordan line, created in collaboration with basketball legend Michael Jordan, is one of the most iconic sneaker lines in history. The original Air Jordan 1 debuted in 1985 and quickly became a cultural phenomenon, known for its bold design and association with the NBA superstar.",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Color.fromRGBO(112, 123, 129, 1)
              ),
              ),
           ),
           const Spacer(),
           Padding(
             padding: const EdgeInsets.only(bottom: 30,
             left: 53),
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
                    color: Color.fromRGBO(43, 43, 43, 0.804),),
                ),
                const SizedBox(width: 70,),
                ElevatedButton(onPressed: (){},
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blueAccent),
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