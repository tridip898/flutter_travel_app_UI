import 'package:flutter/material.dart';

class BeachCard extends StatelessWidget {
  final String iconPath;
  final String beachName;
  final String country;
  final int price;
  final double rating;
  const BeachCard({Key? key, required this.iconPath, required this.beachName, required this.country, required this.price, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        //margin: EdgeInsets.only(left: 15),
        height: MediaQuery.of(context).size.height*0.31,
        width: MediaQuery.of(context).size.width*0.55,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300.withOpacity(0.5),
                blurRadius: 10,
                spreadRadius: 10,
                offset: Offset(0, 10)
            )
          ],
        ),
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image
            Container(
              height: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300.withOpacity(0.5),
                        blurRadius: 20,
                        spreadRadius: 10,
                        offset: Offset(0, 10)
                    )
                  ],
                  image: DecorationImage(image: AssetImage(iconPath),fit: BoxFit.cover)
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(beachName,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          Icon(Icons.star,color: Colors.orangeAccent,),
                          Text(rating.toString(),style: TextStyle(fontSize: 18),)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.location_on_outlined,color: Colors.grey.shade700,),
                      Text(country,style: TextStyle(fontSize: 18),)
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("\$"+price.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.indigoAccent.shade700),),
                          Text("/person",style: TextStyle(fontSize: 18),),
                        ],
                      ),
                      Icon(Icons.arrow_forward,color: Colors.grey.shade700,),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
