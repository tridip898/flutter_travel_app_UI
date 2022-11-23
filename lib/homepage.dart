import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:travel_app_ui/details.dart';
import 'package:travel_app_ui/tour_pack.dart';

import 'beach_card.dart';
import 'categories.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          color: Colors.grey.shade50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home_filled,
                    size: 30,
                    color: Colors.grey.shade500,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.video_collection_outlined,
                    size: 30,
                    color: Colors.grey.shade500,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.confirmation_num_outlined,
                    size: 30,
                    color: Colors.grey.shade500,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person_outline,
                    size: 30,
                    color: Colors.grey.shade500,
                  )),
            ],
          ),
        ),
        backgroundColor: Colors.grey.shade100,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              //app bar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Welcome, Tridip",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade900),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.waving_hand_rounded,
                              color: Colors.orangeAccent,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              size: 25,
                            ),
                            Text(
                              "Sanfransisco, USA",
                              style: TextStyle(
                                  fontSize: 17, color: Colors.grey.shade700),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.notification_add_outlined,
                          size: 30,
                          color: Colors.grey.shade700,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          "lib/icons/me.png",
                          height: 28,
                          color: Colors.grey.shade700,
                        )
                      ],
                    )
                  ],
                ),
              ),

              //search bar
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200.withOpacity(0.9),
                          blurRadius: 30,
                          spreadRadius: 5,
                          offset: const Offset(0, 10))
                    ],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.all(5),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Destinations ...",
                        hintStyle:
                            TextStyle(fontSize: 18, color: Colors.grey.shade800),
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 35,
                        ),
                        suffixIcon: const Icon(
                          Icons.camera_enhance_outlined,
                          size: 30,
                        )),
                  ),
                ),
              ),

              //categories
              Container(
                  height: 55,
                  margin: const EdgeInsets.only(top: 10),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Categories(
                        imagePath: "lib/icons/mountain.png",
                        text: "Mountain",
                      ),
                      Categories(
                        imagePath: "lib/icons/beach.png",
                        text: "Beach",
                      ),
                      Categories(
                        imagePath: "lib/icons/lake.png",
                        text: "Lake",
                      ),
                      Categories(
                        imagePath: "lib/icons/jungle.png",
                        text: "Jungle",
                      ),
                    ],
                  )),

              SizedBox(
                height: 20,
              ),

              //card
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    BeachCard(
                      beachName: "Cox's Bazar",
                      country: "Bangladesh",
                      iconPath: "lib/images/cox.jpg",
                      price: 45,
                      rating: 4.1,
                    ),
                    BeachCard(
                      beachName: "Whitehaven",
                      country: "Australia",
                      iconPath: "lib/images/australia.webp",
                      price: 75,
                      rating: 4.7,
                    ),
                    BeachCard(
                      beachName: "Goa Beach",
                      country: "India",
                      iconPath: "lib/images/goa.jpg",
                      price: 35,
                      rating: 4.5,
                    ),
                    BeachCard(
                      beachName: "Meeru Island",
                      country: "Maldives",
                      iconPath: "lib/images/maldives.jpg",
                      price: 55,
                      rating: 4.3,
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Group Tours",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: const [
                        Text(
                          "See more",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.arrow_forward)
                      ],
                    )
                  ],
                ),
              ),

              SizedBox(height: 10,),
              // group card
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Row(
                 children: [
                   GestureDetector(
                     child: TourPackage(
                       placeName: "Wooden Hill",
                       teamName: "Portic team",
                       from: " Alabama",
                       to: "Alaska",
                       image: "lib/images/wood.jpg",
                       days: 2,
                     ),
                     onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Details())),
                   ),
                   TourPackage(
                     placeName: "Stockhorn Lake",
                     teamName: "Biking team",
                     from: " Zuric",
                     to: "Stockhorn",
                     image: "lib/images/stockhorn-lake.webp",
                     days: 5,
                   ),
                   TourPackage(
                     placeName: "Alpine Hill",
                     teamName: "Bd Travelers",
                     from: " California",
                     to: "Texas",
                     image: "lib/images/alpine.jpg",
                     days: 3,
                   ),
                 ],
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}
