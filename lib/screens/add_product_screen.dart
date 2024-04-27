// import 'package:flutter/material.dart';
// import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
// import 'package:store_app/helper/show_snak_bar.dart';
// import 'package:store_app/models/products_model.dart';
// import 'package:store_app/services/add_product_services.dart';
// import 'package:store_app/widgets/custom_button.dart';
// import 'package:store_app/widgets/custom_text_form.dart';

// class AddProductScreen extends StatefulWidget {
//  const AddProductScreen({super.key});

//   static String id = 'AddProductScreen';

//   @override
//   State<AddProductScreen> createState() => _AddProductScreenState();
// }

// class _AddProductScreenState extends State<AddProductScreen> {
//   String? price, image, des, productName , category;

//   bool isLoading = false;
//   GlobalKey<FormState> formKey =GlobalKey();
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
//           title: const Text('Add Product',
//               style: TextStyle(
//                 color: Colors.black,
//               )),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Form(
//             key: formKey,
//             child: SingleChildScrollView(
//               physics:const BouncingScrollPhysics(),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                 const  SizedBox(
//                     height: 60,
//                   ),
//                   CustomTextFeild(
//                       hintText: 'Product Name',
//                       onChanged: (data) {
//                         productName = data;
//                       },
//                       validator: (value) {
//                      if (value!.isEmpty )
//                     {
//                       return 'Feild a Required';
//                      }
//                     },),
//                 const  SizedBox(
//                     height: 10,
//                   ),
//                   CustomTextFeild(
//                     hintText: 'Description',
//                     onChanged: (data) {
//                       des = data;
//                     },
                    
//                     validator: (value) {
//                      if (value!.isEmpty )
//                     {
//                       return 'Feild a Required';
//                      }
//                     },
//                   ),
//                 const  SizedBox(
//                     height: 10,
//                   ),
//                   CustomTextFeild(
//                       hintText: 'Price',
//                       onChanged: (data) {
//                         price = data;
//                       },
                    
//                       validator: (value) {
//                      if (value!.isEmpty )
//                     {
//                       return 'Feild a Required';
//                      }
//                     },
//                       inputType: TextInputType.number,
//                        ),
//                 const  SizedBox(
//                     height: 10,
//                   ),
//                   CustomTextFeild(
//                     hintText: 'Image',
//                     onChanged: (data) {
//                       image = data;
//                     },
                 
//                    validator: (value) {
//                      if (value!.isEmpty )
//                     {
//                       return 'Feild a Required';
//                      }
//                     },
//                   ),
//                 const   SizedBox(
//                     height: 10,
//                   ),
//                   CustomTextFeild(
//                     hintText: 'category',
//                     onChanged: (data) {
//                       category = data;
//                     },
                   
//                     validator: (value) {
//                      if (value!.isEmpty )
//                     {
//                       return 'Feild a Required';
//                      }
//                     },
//                   ),
//                 const  SizedBox(
//                     height: 60,
//                   ),
//                   CustomButton(
//                     textButton: 'Add Product',
//                     ontap: () async {
                      
//                       if(formKey.currentState!.validate())
//                       {
//                       isLoading = true;
//                       setState(() {});
              
//                       try {
//                         await addProduct(product);
//                         showSnakBar(context, color: Colors.blue, 'Success');
//                         print('Success');
//                       } catch (e) {
//                         print(e.toString());
//                       }
//                       }
//                       isLoading = false;
//                       setState(() {});
//                     },
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Future<void> addProduct(ProductsModel product) async{
//    await AddProductServices().addProducts(
//     title:  productName!,
//     price: price!,
//     desc:  des!,
//     image: image!,
//     category:category!,);
//   }
// }
