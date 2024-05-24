import 'package:flutter/material.dart';
import 'package:flutter_calcaulator/ui/constant/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: greyDarkBg,
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                color: greyBg,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    getRow('ac', 'ce', '%', '/'),
                    getRow('7', '8', '9', '*'),
                    getRow('4', '5', '6', '-'),
                    getRow('1', '2', '3', '+'),
                    getRow('00', '0', '.', '='),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getRow(String text1, String text2, String text3, String text4) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          style: TextButton.styleFrom(
              shape: const CircleBorder(
                side: BorderSide(width: 0, color: Colors.transparent),
              ),
              backgroundColor: getBackgroundColor(text1)),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              textAlign: TextAlign.center,
              text1,
              style: const TextStyle(fontSize: 26, color: greyColor),
            ),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
              shape: const CircleBorder(
                side: BorderSide(width: 0, color: Colors.transparent),
              ),
              backgroundColor: getBackgroundColor(text2)),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              textAlign: TextAlign.center,
              text2,
              style: const TextStyle(fontSize: 26, color: greyColor),
            ),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
              shape: const CircleBorder(
                side: BorderSide(width: 0, color: Colors.transparent),
              ),
              backgroundColor: getBackgroundColor(text3)),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              textAlign: TextAlign.center,
              text3,
              style: const TextStyle(fontSize: 26, color: greyColor),
            ),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
              shape: const CircleBorder(
                side: BorderSide(width: 0, color: Colors.transparent),
              ),
              backgroundColor: getBackgroundColor(text4)),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              textAlign: TextAlign.center,
              text4,
              style: const TextStyle(fontSize: 26, color: greyColor),
            ),
          ),
        )
      ],
    );
  }

  bool isOperator(String text) {
    var list = ['ac', 'ce', '%', '/', '*', '-', '+', '='];

    for (var item in list) {
      if (item == text) {
        return true;
      }
    }
    return false;
  }

  Color getBackgroundColor(String text) {
    if (isOperator(text)) {
      return greyDarkBg;
    }
    return greyBg;
  }
}
