// import 'package:flutter/material.dart';
// import 'package:store_app/models/products_model.dart';
// import 'package:store_app/screens/add_product_screen.dart';
// import 'package:store_app/screens/update_screen.dart';
// import 'package:store_app/widgets/custom_button.dart';

// class ChooseScreen extends StatelessWidget {
//   const ChooseScreen({super.key});

//  static String id = 'ChooseScreen';
//   @override
//   Widget build(BuildContext context) {
//      ProductsModel product =
//         ModalRoute.of(context)!.settings.arguments as ProductsModel;
//     return Scaffold(
//       appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           title: const Text('Choose what do you want to do?',
//               style: TextStyle(
//                 color: Colors.black,
//               ),),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CustomButton(
//                 textButton: 'Update Product',
//                 ontap: () async {
//                   Navigator.pushNamed(context, UpdateScreen.id,arguments: product);
//                 },
//               ),
//            const    SizedBox(
//                 height: 20,
//               ),
//               CustomButton(
//                 textButton: 'Add Product',
//                 ontap: () async {
//                    Navigator.pushNamed(context, AddProductScreen.id,arguments: product);
//                 },
//               ),
//             const   SizedBox(
//                 height: 20,
//               ),
//               CustomButton(
//                 textButton: 'Search of Product',
//                 ontap: () async {
//                    Navigator.pushNamed(context, UpdateScreen.id,arguments: product);
//                 },
//               )
//             ],
//           ),
//         ),
      
//     );  
    
//   }
// }