import 'package:flutter/material.dart';
import 'package:trip_planing_app/model/place_model.dart';
import 'package:trip_planing_app/utilities/colors.dart';

class RecomendedCard extends StatelessWidget {
  final PlaceInfo placeInfo;
  final VoidCallback press;
  const RecomendedCard({
    Key? key, required this.placeInfo, required this.press,
  }) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 250,
          width: 200,
          decoration: BoxDecoration(
              color: kwhiteClr,
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                placeInfo.image))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(placeInfo.name,style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on,
                      color: kPrimaryClr,),
                      Text(placeInfo.location,
                      style: TextStyle(
                        color: Colors.grey, 
                        fontSize: 15,
                      ),
                      )
                    ],)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title, image;
  final VoidCallback press;
  const CategoryCard({
    required this.title,
    required this.image,
    required this.press,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: press,
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(100),
          child: Container(
            height: 55,
            decoration: BoxDecoration(
              color: kwhiteClr,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8.0),
              child: Row(children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(image),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold))
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
