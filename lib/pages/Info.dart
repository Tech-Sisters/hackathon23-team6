import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key});

  @override
  Widget build(BuildContext context) {
    String hexColor = "#2E86AB";
    String hexColor1 = "#85C1E9";

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: HexColor(hexColor),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 45),
            Text(
              "Zakat",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 45),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'What is Zakat?',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    VerticalDivider(color: Colors.grey), 
                    TextButton(
                      onPressed: () {
                        _showMyDialog(context);
                        
                      },
                      child: Text('Learn More'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 45),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Difference between Zakat and sadqa',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    VerticalDivider(color: Colors.grey), 
                    TextButton(
                      onPressed: () {
                       
                      },
                      child: Text('Learn More'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 45),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Is the person eligible to pay zakat',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    VerticalDivider(color: Colors.grey), 
                    TextButton(
                      onPressed: () {
                        
                      },
                      child: Text('Learn More'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 45),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Calculations for Zakat',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    VerticalDivider(color: Colors.grey), 
                    TextButton(
                      onPressed: () {
                       
                      },
                      child: Text('Learn More'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 45),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Why is Zakat important for a muslim?',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    VerticalDivider(color: Colors.grey), 
                    TextButton(
                      onPressed: () {
                      
                      },
                      child: Text('Learn More'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 45),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'What is Zakat-al-Fitah',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    VerticalDivider(color: Colors.grey),
                    TextButton(
                      onPressed: () {
                       
                      },
                      child: Text('Learn More'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 45),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Criteria pertaining to the assets and the Zakat payer',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    VerticalDivider(color: Colors.grey), 
                    TextButton(
                      onPressed: () {
                    
                      },
                      child: Text('Learn More'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, 
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('What is Zakat'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Zakat is an obligatory charitable contribution in Islam requiring eligible Muslims to give a portion.'),
                
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop(); 
              },
            ),
          ],
        );
      },
    );
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
