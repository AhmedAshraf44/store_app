// import 'package:flutter/material.dart';
// import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
// import 'package:store_app/helper/show_snak_bar.dart';
// import 'package:store_app/models/products_model.dart';
// import 'package:store_app/services/update_product_services.dart';
// import 'package:store_app/widgets/custom_button.dart';
// import 'package:store_app/widgets/custom_text_form.dart';

// class UpdateScreen extends StatefulWidget {
//   UpdateScreen({super.key});

//   static String id = 'UpdateScreen';

//   @override
//   State<UpdateScreen> createState() => _UpdateScreenState();
// }

// class _UpdateScreenState extends State<UpdateScreen> {
//   String? price, image, des, productName;

//   bool isLoading = false;

//   @override
//   Widget build(BuildContext context) {
//     ProductsModel product =
//         ModalRoute.of(context)!.settings.arguments as ProductsModel;
//     return ModalProgressHUD(
//       inAsyncCall: isLoading,
//       child: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           title: const Text('Update Product',
//               style: TextStyle(
//                 color: Colors.black,
//               )),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CustomTextFeild(
//                   hintText: 'Product Name',
//                   onChanged: (data) {
//                     productName = data;
//                   }),
//           const    SizedBox(
//                 height: 10,
//               ),
//               CustomTextFeild(
//                 hintText: 'Description',
//                 onChanged: (data) {
//                   des = data;
//                 },
//               ),
//            const   SizedBox(
//                 height: 10,
//               ),
//               CustomTextFeild(
               
//                   hintText: 'Price',
//                   onChanged: (data) {
//                     price = data;
//                   },
//                   inputType: TextInputType.number,
//                    ),
//            const   SizedBox(
//                 height: 10,
//               ),
//               CustomTextFeild(
//                 hintText: 'Image',
//                 onChanged: (data) {
//                   image = data;
//                 },
//               ),
//             const  SizedBox(
//                 height: 60,
//               ),
//               CustomButton(
//                 textButton: 'Update Product',
//                 ontap: () async {
//                   isLoading = true;
//                   setState(() {});
          
//                   try {
//                     await updateProduct(product);
//                     showSnakBar(context, color: Colors.blue, 'Success');
//                     print('Success');
//                   } catch (e) {
//                     print(e.toString());
//                   }
//                   isLoading = false;
//                   setState(() {});
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Future<void> updateProduct(ProductsModel product) async{
//    await UpdateProductServices().udateProduct(
//         id: product.id,
//         title: productName == null ? product.title : productName!,
//         price: price == null ? product.price.toString() : price!,
//         desc:des == null ? product.description :  des!,
//         image:image == null ? product.image : image!,
//         category: product.category);
//   }
// }
