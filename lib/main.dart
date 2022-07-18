import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Me Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftnumber = 1;
  int rightnumber = 1;

  void diceNumbers() {
    setState(() {
      leftnumber = Random().nextInt(6) + 1;
      rightnumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                diceNumbers();
              },
              child: Image.asset('images/dice$leftnumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                diceNumbers();
                // print('Right button pressed.');
              },
              child: Image.asset('images/dice$rightnumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

// class DicePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     int leftNumber = 3;
//
//     return Center(
//       child: Row(
//         children: [
//           Expanded(
//             child: TextButton(
//               onPressed: () {
//                 print('Left button');
//               },
//               child: Image.asset('images/dice$leftNumber.png'),
//             ),
//           ),
//           Expanded(
//             child: TextButton(
//               onPressed: /*we make here anonymous function)*/ () {
//                 print('Right button pressed');
//               },
//               child: Image.asset('images/dice2.png'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// $leftNumber --> string interpolation

// Expanded(
// flex: 2,
// child: Image.asset('images/dice1.png'),
// ),

// Image(
// image: AssetImage('images/dice1.png'),
// )
