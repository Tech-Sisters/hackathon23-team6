import 'package:flutter/material.dart';
import 'package:zakat_calculator/pages/Calculator.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String hexColor = "#2E86AB";
    String hexColor1 = "#85C1E9";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: HexColor(hexColor),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
            "Zakat Calculator",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 56,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 56),
          ElevatedButton(
            onPressed: () {
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>
              CalculatorPage()),
            );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: HexColor(hexColor1),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              )
            ),
          child: Text("Calculate your zakat",
          style: TextStyle(
            fontSize: 20,
          ),)),
          SizedBox(height: 20),
          ElevatedButton(onPressed: () {
            print("button pressed");
            }, 
            style: ElevatedButton.styleFrom(
              backgroundColor: HexColor(hexColor1),
              padding: EdgeInsets.symmetric(horizontal: 48, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              )
            ),
          child: Text("All About Zakat",
          style: TextStyle(
            fontSize: 20,
          ),))
          ],
          ),
          ),
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

