// // ignore_for_file: missing_required_param

// import 'package:store_app/helper/api_helper.dart';
// import 'package:store_app/models/products_model.dart';

// class UpdateProductServices 
// {

//  Future<ProductsModel> udateProduct(
// {
//     required String title,
//     required String price,
//     required String desc,
//     required String image,
//     required String category,
//     required int id,
//   }
//  ) async {

// print('product id  = $id');
// Map<String,dynamic> data = await Api().put( 
//     uri: 'https://fakestoreapi.com/products/$id',
//       data: {
//         'title': title,
//         'price': price,
//         'description': desc,
//         'image': image,
//         'category':category ,
//       },
//       );
//    return ProductsModel.fromJson(data);
//  }

// }