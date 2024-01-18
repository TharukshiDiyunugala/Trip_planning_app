import 'package:flutter/material.dart';
import 'package:trip_planing_app/model/place_model.dart';
import 'package:trip_planing_app/screens/Home/widgets/recomended_card.dart';
import 'package:trip_planing_app/screens/detailscreen/detail_screen.dart';
import 'package:trip_planing_app/utilities/colors.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhitClr,
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network("https://image.shutterstock.com/image-vector/home-icon-isolated-on-transparent-260nw-654663997.jpg",
              height: 50,
              width: 50,
              
              ),
               Image.network("https://t3.ftcdn.net/jpg/03/30/32/38/240_F_330323826_mJqnpxjA1YEYCIcmRKfIE2CCVo1chkPJ.jpg",
              height: 48,
              width: 48,
              
              ),
               Image.network("https://image.shutterstock.com/image-vector/favorite-icon-outline-style-design-260nw-1722886267.jpg",
              height: 50,
              width: 50,
              
              ),
              Image.network("https://image.shutterstock.com/image-vector/talk-bubble-speech-icon-blank-260nw-1415472902.jpg",
              height: 50,
              width: 50,
              
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //app bar
                Row(
                  children: [
                    const CircleAvatar(
                        radius: 27,
                        backgroundImage: NetworkImage(
                            "https://img.freepik.com/free-photo/smiling-happy-woman-wearing-denim-jacket-white-shirt_176532-10378.jpg?size=626&ext=jpg&ga=GA1.1.42334345.1692178467&semt=ais")),
                    const SizedBox(
                      width: 15,
                    ),
                    RichText(
                        text: const TextSpan(
                            text: "Hello",
                            style: TextStyle(
                              color: kBlackClr,
                              fontSize: 18,
                            ),
                            children: [
                          TextSpan(
                              text: ", Alexa",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ))
                        ]))
                  ],
                ),
                //search section
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Explore new destinations",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Material(
                  borderRadius: BorderRadius.circular(200),
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        color: kwhiteClr,
                        borderRadius: BorderRadius.circular(200)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: "Search your destination",
                                prefixIcon: Icon(Icons.search),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                          const CircleAvatar(
                            radius: 22,
                            backgroundColor: kPrimaryClr,
                            child: Icon(
                              Icons.sort_by_alpha_sharp,
                              color: kwhiteClr,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                //Category
                const SizedBox(height: 20),
                Row(
                  children: const [
                    Text(
                      "Category",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          CategoryCard(
                            press: () {},
                            image:
                                "https://img.freepik.com/free-photo/rain-clouds-mountain-top_661209-529.jpg?size=626&ext=jpg&ga=GA1.1.42334345.1692178467&semt=ais",
                            title: "Forests",
                          ),
                          CategoryCard(
                            press: () {},
                            image:
                                "https://img.freepik.com/free-photo/beautiful-shot-ma-shan-country-park-hong-kong_181624-47956.jpg?size=626&ext=jpg&ga=GA1.1.42334345.1692178467&semt=ais",
                            title: "Mountains",
                          ),
                          CategoryCard(
                            press: () {},
                            image:
                                "https://img.freepik.com/free-photo/beautiful-tropical-beach-sea_74190-6739.jpg?size=626&ext=jpg&ga=GA1.2.42334345.1692178467&semt=ais",
                            title: "Sea",
                          ),
                          CategoryCard(
                            press: () {},
                            image:
                                "https://img.freepik.com/free-photo/vertical-shot-sopo-aga-waterfall-surrounded-by-greenery-upolu-island-samoa_181624-34956.jpg?size=626&ext=jpg&ga=GA1.1.42334345.1692178467&semt=ais",
                            title: "Waterfalls",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //Recommended
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Text(
                      "Recommended",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  height: 350,
                  child: ListView.builder(
                    itemCount:places.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 5,right: 15),
                        child: Row(
                          children: [
                            RecomendedCard(placeInfo: places[index], 
                            press: () { 
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(
                                placeInfo:  places[index],)));
                             },)
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

