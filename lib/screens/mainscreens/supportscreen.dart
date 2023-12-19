import 'package:flutter/material.dart';
import 'package:smartqueue/constants.dart';
import 'package:smartqueue/widgets/wavedesign.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);
  final double spaces = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopWave(
            title: 'Support',
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                buttons(text: 'Sign Out'),
                SizedBox(
                  height: spaces,
                ),
                buttons(text: 'Help Line'),
                SizedBox(
                  height: spaces,
                ),
                buttons(text: 'Complaints'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextButton buttons({required String text}) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: lightgrey,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
