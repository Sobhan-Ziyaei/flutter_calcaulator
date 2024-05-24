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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
