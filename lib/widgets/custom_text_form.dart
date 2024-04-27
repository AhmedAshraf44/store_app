
// // ignore_for_file: must_be_immutable, body_might_complete_normally_nullable
// import 'package:flutter/material.dart';


// class CustomTextFeild extends StatelessWidget {
// CustomTextFeild({super.key, this.hintText,this.onChanged,this.inputType,this.validator });
 

//   String? hintText;
//  Function(String)? onChanged;
//  String? Function(String?)? validator;


//   TextInputType? inputType ;
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       onChanged: onChanged,
//       validator: validator,
//              keyboardType: inputType,
//             decoration: InputDecoration(
//               hintText: hintText,
//                enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8),
//                ),
//               border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8),
//             ),
//           ),
//         );
//   }
// }