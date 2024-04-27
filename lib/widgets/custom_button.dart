// // ignore_for_file: must_be_immutable

// import 'package:flutter/material.dart';

// class CustomButton extends StatelessWidget {
//    CustomButton({super.key, required this.textButton,this.ontap});

//  final String textButton;
//   VoidCallback? ontap;
//   @override
//   Widget build(BuildContext context) {
//     return  GestureDetector(
//               onTap:ontap,
//               child: Container(
//                 decoration: BoxDecoration(
//                color: Colors.blue,
//                 borderRadius: BorderRadius.circular(8),
//                 ),
//                 height: 40,
//                 width: double.infinity,
//                 child: Center(
//                   child:  Text(
//                     textButton,
//                     style:const TextStyle(
//                       color: Colors.white,
//                       fontSize: 22
//                     ),
//                   ),
//                 ),
//               ),
//             );
//   }
// }