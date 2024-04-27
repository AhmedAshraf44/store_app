import 'package:flutter/material.dart';
import 'package:store_app/models/products_model.dart';


class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});
  static String id = 'DetailsScreen';
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    ProductsModel product =
        ModalRoute.of(context)!.settings.arguments as ProductsModel;
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Details',
            style: TextStyle(
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                
                ),
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  // color:const Color(0xffE5E5E5),
                  //  color:  Colors.grey.withOpacity(0.3),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.network(
                      product.image,
                      fit: BoxFit.contain,
                      height: MediaQuery.of(context).size.height * .25,
                    ),
                  ),
                ),
              ),
             const SizedBox(height: 20,),
             Container(
              width: double.infinity,
             color: Colors.grey.withOpacity(0.3),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const Text('Title',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blue),),
                  const SizedBox(height: 5,),
                  Text(product.title,style:const  TextStyle(fontSize: 16,fontWeight: FontWeight.w400))
                ],),
              ),
             ),
             const SizedBox(height: 20,),
            Container(
              width: double.infinity,
             color: Colors.grey.withOpacity(0.3),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const Text('Price',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blue),),
                  const SizedBox(height: 5,),
                  Text(product.price.toString(),style:const  TextStyle(fontSize: 16,fontWeight: FontWeight.w400))
                ],),
              ),
             ),
             
              const SizedBox(height: 20,),
            Container(
              width: double.infinity,
             color: Colors.grey.withOpacity(0.3),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const Text('Category',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blue),),
                  const SizedBox(height: 5,),
                  Text(product.category,style:const  TextStyle(fontSize: 16,fontWeight: FontWeight.w400))
                ],),
              ),
             ),
              const SizedBox(height: 20,),
            Container(
              width: double.infinity,
             color: Colors.grey.withOpacity(0.3),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const Text('Description',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blue),),
                  const SizedBox(height: 5,),
                  Text(product.description,style:const  TextStyle(fontSize: 16,fontWeight: FontWeight.w400))
                ],),
              ),
             ),
              const SizedBox(height: 20,),
            Container(
              width: double.infinity,
             color: Colors.grey.withOpacity(0.3),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const Text('rating',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blue),),
                  const SizedBox(height: 5,),
                  Text(product.rating!.rate.toString(),style:const  TextStyle(fontSize: 16,fontWeight: FontWeight.w400))
                ],),
              ),
             ),
              const SizedBox(height: 20,),
              Container(
              width: double.infinity,
             color: Colors.grey.withOpacity(0.3),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const Text('Count',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blue),),
                  const SizedBox(height: 5,),
                  Text(product.rating!.count.toString(),style:const  TextStyle(fontSize: 16,fontWeight: FontWeight.w400))
                ],),
              ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
