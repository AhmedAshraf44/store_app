// ignore_for_file: missing_required_param

import 'package:store_app/helper/api_helper.dart';
import 'package:store_app/models/products_model.dart';

class AllProductsServices {
  Future<List<ProductsModel>> allProducts() async {
    var data =
        await Api().get(uri: 'https://fakestoreapi.com/products');
    List<ProductsModel> productsList = [];

    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductsModel.fromJson(
          data[i],
        ),
      );
    }
    return productsList;
  }
}
