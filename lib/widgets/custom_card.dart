
import 'package:flutter/material.dart';
import 'package:store_app/models/products_model.dart';
import 'package:store_app/screens/details_screen.dart';

class CustomCard extends StatefulWidget {
const  CustomCard({super.key,required this.product});

final ProductsModel product;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isFavorite = false;
  Icon iconFavorite=const Icon(Icons.favorite_border) ;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ()
      {
        Navigator.pushNamed(context,DetailsScreen.id,arguments: widget.product);
      },
      child: Stack(
          clipBehavior: Clip.none,
           children : [ 
             Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 40,
                  spreadRadius: 0,
                  offset:const Offset(10, 10)
                ),],
            ),
             child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(widget.product.title,
                    maxLines: 1,
                    style:const TextStyle(
                      color: Colors.grey,
                    ),),
                              
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(r'$' '${widget.product.price}',
                    style:const TextStyle(
                      color: Colors.grey,
                    ),),
                  IconButton(onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                  icon: isFavorite == true ? iconFavorite :
                   const Icon(Icons.favorite,color: Colors.red,))
                      ],
                    ),
                  ],
                ),
              ),
             ),
           ),
             Positioned(
              right: 25,
              bottom: 90,
              child: Image.network(widget.product.image,
              height: 100,
              width: 100,),),
           ],
         ),
    );
  }
}