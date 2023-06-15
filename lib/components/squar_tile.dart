import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String Imagepath;
  final String Connect;
  const SquareTile({
    super.key,
    required this.Imagepath,
    required this.Connect,
  });

  @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 25.0),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.white),
//         borderRadius: BorderRadius.all(
//           Radius.circular(20),
//         ),
//         color: Colors.grey[200],
//       ),
//       child: Image.asset(
//         Imagepath,
//         height: 40,
//       ),
//     );
//   }
// }
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              Imagepath,
              height: 40,
            ),
          ),
          Text(Connect),
        ],
      ),
    );
  }
}
