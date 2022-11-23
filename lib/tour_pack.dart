import 'package:flutter/material.dart';

class TourPackage extends StatelessWidget {
  final String placeName;
  final String teamName;
  final String from;
  final String to;
  final String image;
  final int days;
  const TourPackage({Key? key, required this.placeName, required this.teamName, required this.from, required this.to, required this.image, required this.days}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 20.0, top: 10, bottom: 10),
      child: Container(
        height: 145,
        width: MediaQuery.of(context).size.width*0.88,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300.withOpacity(0.6),
                  blurRadius: 30,
                  spreadRadius: 25,
                  offset: Offset(0, 10))
            ]),
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            Container(
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300.withOpacity(0.3),
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: Offset(0, 10))
                  ],
                  image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover)),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(placeName,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Text(teamName,style: TextStyle(fontSize: 18),)
                          ],
                        ),
                        Icon(Icons.favorite_outline,color: Colors.red,)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.grey.shade800,width: 2)
                              ),
                              padding: EdgeInsets.all(2),
                              child: Container(
                                height: 12,
                                width: 12,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(50)
                                ),
                              ),
                            ),
                            Text(from,style: TextStyle(fontSize: 17),)
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined,color: Colors.indigoAccent,),
                            Text(to,style: TextStyle(fontSize: 17,color: Colors.indigoAccent),)
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("$days days left",style: TextStyle(fontSize: 17,color: Colors.grey.shade700),),
                        ElevatedButton(onPressed: (){}, child: Text("Book",style: TextStyle(fontSize: 18),))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
