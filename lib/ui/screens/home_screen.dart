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
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              text1,
              style: const TextStyle(fontSize: 26, color: greyColor),
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              text2,
              style: const TextStyle(fontSize: 26, color: greyColor),
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              text3,
              style: const TextStyle(fontSize: 26, color: greyColor),
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              text4,
              style: const TextStyle(fontSize: 26, color: greyColor),
            ),
          ),
        )
      ],
    );
  }
}
