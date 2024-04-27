// import 'package:store_app/helper/api_helper.dart';
// import 'package:store_app/models/products_model.dart';

// class AddProductServices {
//   Future<ProductsModel> addProducts({
//     required String title,
//     required String price,
//     required String desc,
//     required String image,
//     required String category,
//   }) async {
//     // ignore: missing_required_param
//     Map<String, dynamic> data = await Api().post(
//       uri: 'https://fakestoreapi.com/products',
//       data: {
//         'title': title,
//         'price': price,
//         'description': desc,
//         'image': image,
//         'category':category ,
//       },
//     );

//     return ProductsModel.fromJson(data);
//   }
// }
