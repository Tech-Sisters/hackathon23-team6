import 'package:flutter/material.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    String hexColor = "#2E86AB";
     String hexColor1 = "#85C1E9";
    return Scaffold(
      backgroundColor: HexColor(hexColor),
      body: Center(
        child : Column(
          children: [
            SizedBox(height: 30),
            Text("Enter your annual income :",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold
              ),),
            SizedBox(height : 20),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                
                
              ),
            ),
             SizedBox(height: 30),
            Text("Enter the amount of gold & silver (in grams):",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold
              ),),
            SizedBox(height : 20),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                
                
              ),
            ),
             SizedBox(height: 30),
            Text("Enter the value of any stock or investment you own : ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold
              ),),
            SizedBox(height : 20),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                
                
              ),
            ),
             SizedBox(height: 30),
            Text("Enter the value of personal and living expenses:",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold
              ),),
            SizedBox(height : 20),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                
                
              ),
            ),
             SizedBox(height: 30),
            Text("Enter the amount of debts you owe:",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold
              ),),
            SizedBox(height : 20),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                
                
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(onPressed: (){
              print("button pressed");
              
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: HexColor(hexColor1),
              padding: EdgeInsets.symmetric(horizontal: 36, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18)
              )
            ),
             child: Text("Calculate",
             style: TextStyle(
              fontSize: 18,
             ),)),

          ],
        )
        ),
    );
  }
}




class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}