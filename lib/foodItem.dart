import 'package:flutter/material.dart';
import 'package:food_app/Favourite_Provider.dart';
import 'package:provider/provider.dart';

class FoodItem extends StatelessWidget {
  // ============Item Id========================/////////
  final String id;
  final String title;
  final String subtitle;
  final String rating;
  final String image;

  const FoodItem(this.id, this.title, this.subtitle, this.rating, this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      width: 185,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
           BoxShadow(
          color: Colors.black.withOpacity(0.10),
           offset: Offset(0, 6),
             blurRadius: 16,
              ),
             ],
            ),
      padding:  EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(image,
              height: 95,
              width: 120,
            ),
          ),
           SizedBox(height: 5),
          Text(title,style:  TextStyle(
              fontFamily: "Roboto",
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black),
          ),
          SizedBox(
            height: 6,
          ),
          Text(subtitle, style:  TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w400,
            fontFamily: "Roboto",
            fontSize: 16,
          ),
          ),
           SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                   Icon(Icons.star,color: Colors.orange,),
                   SizedBox(width: 8),
                  Text(rating,style:  TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto",
                    fontSize: 16,
                  )),
                ],
              ),

              Consumer<FavouriteProvider>(
                  builder: (context, favProvider, child) {
                    final isFavorite = favProvider.isFavorite(id);

                    return IconButton(
                      onPressed: () {
                        favProvider.toggleFavorite(id);
                      },
                      icon: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite ? Colors.redAccent : Colors.black,
                        size: 25,
                      ),
                    );
                  }
              ),
            ],
          ),
        ],
      ),
    );
  }
}