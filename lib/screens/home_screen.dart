import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/products_model.dart';
import 'package:store_app/screens/drawer_screen.dart';
import 'package:store_app/services/all_products_services.dart';
import 'package:store_app/widgets/custom_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static String id = 'HomePage';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var future;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    future = AllProductsServices().allProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const DrawerScreen(),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.cartShopping,
              color: Colors.black,
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('New Trend',
            style: TextStyle(
              color: Colors.black,
            )),
      ),
      body: FutureBuilder<List<ProductsModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<ProductsModel> product = snapshot.data!;
            return Padding(
              padding: const EdgeInsets.only(right: 16, left: 16, top: 60),
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                clipBehavior: Clip.none,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1.5,
                  mainAxisSpacing: 100,
                ),
                itemCount: product.length,
                itemBuilder: (context, index) {
                  return CustomCard(
                    product: product[index],
                  );
                },
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
