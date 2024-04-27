// // ignore_for_file: missing_required_param

// import 'package:store_app/helper/api_helper.dart';
// import 'package:store_app/models/products_model.dart';

// class GetCategoryServices {
//   Future<List<ProductsModel>> getCategory(
//       {required String categoryName}) async {
//     List<dynamic> data = await Api().get(
//         uri: 'https://fakestoreapi.com/products/category/$categoryName');
//     List<ProductsModel> allCategory = [];
//     for (int i = 0; i < data.length; i++) {
//       allCategory.add(
//         ProductsModel.fromJson(
//           data[i],
//         ),
//       );
//     }
//     return allCategory;
//   }
// }
