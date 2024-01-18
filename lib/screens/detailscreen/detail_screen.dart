import 'package:flutter/material.dart';
import 'package:trip_planing_app/model/place_model.dart';
import 'package:trip_planing_app/utilities/colors.dart';


class DetailScreen extends StatefulWidget {
  final PlaceInfo placeInfo;
  const DetailScreen({super.key, required this.placeInfo});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhitClr,
      body: Stack(
        children: [
          Image.network(widget.placeInfo.image,
          width: double.infinity,
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * 0.5,
          ),
          SafeArea(
            child: Column(
              children: [
                //appbar buttons
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap : (){
                          Navigator.pop(context);
                        },
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(100),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: const BoxDecoration(
                                color: kPrimaryClr,
                                shape: BoxShape.circle
                            
                              ),
                              child: const Center(
                                child: Icon(Icons.arrow_back,
                                color: kwhitClr,
                                size: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(100),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              color: kwhitClr,
                              shape: BoxShape.circle
                          
                            ),
                            child: Center(
                              child: Icon(
                              Icons.bookmark_rounded,
                              color: kPrimaryClr,
                              size: 25,
                              ),
                            ),
                          ),
                        ),
                      ),
                      
                    ],),
                ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                  Expanded(
                    child: Container(
                      
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: kwhitClr,
                        borderRadius: BorderRadius.circular(30)),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text(
                                  widget.placeInfo.name,
                                  style: const TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                             
                                            
                                            const SizedBox(
                                              height: 12,
                                            ),
                                            Row(
                                              children: [
                          const Icon(Icons.location_on,
                          color: kPrimaryClr,),
                          const SizedBox(
                          width: 12,
                                            ),
                          Text(widget.placeInfo.location,
                          style: const TextStyle(
                            color: Colors.grey, 
                            fontSize: 20,
                          ),
                          )
                                              ],),
                                              const SizedBox(
                                              height: 15,
                                            ),
                                              const Text(
                            "Trip Details",
                            style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            ),
                            ),
                            const SizedBox(
                                              height: 10,
                                            ),
                            Text(widget.placeInfo.desc,
                          style: const TextStyle(
                            color: Colors.grey, 
                            fontSize: 18,
                          ),
                          ),
                           const SizedBox(
                                              height: 10,
                                            ),
                          const Divider(
                            height: 5,
                            color: Colors.black,
                          ),
                           const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                          const Text(
                          "Duration",
                          style:  TextStyle(
                            color: Colors.grey, 
                            fontSize: 18,
                          ),
                          ),
                                              const SizedBox(
                          width: 12,
                                              ),
                                              Expanded(
                          child: Text(
                            "${widget.placeInfo.days} days",
                            style: const TextStyle(
                              
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                                              ),
                                            ],),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              children: [
                          const Text(
                          "Duration",
                          style:  TextStyle(
                            color: Colors.grey, 
                            fontSize: 18,
                          ),
                          ),
                                              const SizedBox(
                          width: 12,
                                              ),
                                              Expanded(
                          child: Text(
                            "${widget.placeInfo.distance} killometers",
                            style: const TextStyle(
                              
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                                              ),
                                            ],),
                                             const SizedBox(
                                              height: 20,
                                            ),

                                            MaterialButton(
                                              color:kPrimaryClr,
                                              minWidth: double.infinity,
                                              height: 55,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:BorderRadius.circular(100) ),
                                              onPressed: (){},
                                              child: const Text("Book Trip",
                                              style: TextStyle(
                                                color: kwhiteClr, 
                                                fontSize: 22, 
                                                fontWeight: FontWeight.bold,
                                              ),
                                              )),
                                               const SizedBox(
                                              height: 20,
                                            ),
                                            
                            ]),
                          ),
                        ),
                                
                    ),
                  )
              ],),
          )
        ],
      )
    );
  }
}