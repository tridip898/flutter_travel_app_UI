import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.33,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("lib/images/wood.jpg"),
                        fit: BoxFit.cover),
                    borderRadius:
                        BorderRadius.only(
                            bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30)
                        ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade500.withOpacity(0.5),
                      blurRadius: 20,
                      spreadRadius: 10,
                      offset: Offset(0, 20)
                    )
                  ]
                ),
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.cyan.shade50,
                            border: Border.symmetric(vertical: BorderSide(color: Colors.grey.shade300))
                          ),
                          child: IconButton(onPressed: (){
                            Navigator.pop(context);
                          }, icon: Icon(Icons.arrow_back_sharp,color: Colors.grey.shade500,size: 28,)),
                        ),
                        Container(
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.cyan.shade50,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight:Radius.circular(20)
                            )
                          ),
                          child: Icon(Icons.favorite_outline,color: Colors.grey.shade500,size: 28,),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Wooden Hill",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      SizedBox(height: 8,),
                      Row(
                        children: [
                          Text("Portic Team",style: TextStyle(fontSize: 18,color: Colors.grey.shade700),),
                          SizedBox(width: 18,),
                          Text("8km",style: TextStyle(fontSize: 20,color: Colors.grey.shade700),),
                        ],
                      )
                    ],
                  ),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Icon(Icons.mark_unread_chat_alt_outlined,size: 28,color: Colors.grey.shade500,),
                        VerticalDivider(
                          width: 30,
                          color: Colors.black54,
                          thickness: 1.5,
                          indent: 8,
                          endIndent: 8,
                        ),
                        Column(
                          children: [
                            Text("4.5",style: TextStyle(fontSize: 20,color: Colors.grey.shade700),),
                            Icon(Icons.star,color: Colors.orange,size: 28,)
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Started in:",style: TextStyle(fontSize: 19,color: Colors.grey.shade600),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text("01d:22h:54m",style: TextStyle(fontSize: 30,color: Colors.indigoAccent,fontWeight: FontWeight.bold,fontFamily: "Times New Roman"),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
              child: Container(
                height: MediaQuery.of(context).size.height*0.22,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade300,width: 2),
                  image: DecorationImage(image: AssetImage("lib/images/map.jpg"),fit: BoxFit.cover)
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.grey.shade800,width: 2)
                        ),
                        padding: EdgeInsets.all(3),
                        child: Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                      ),
                      Text(" Alabama",style: TextStyle(fontSize: 22),)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined,color: Colors.indigoAccent,size: 28,),
                      Text("Alaska",style: TextStyle(fontSize: 22,color: Colors.indigoAccent),)
                    ],
                  ),
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 7),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.cyan.shade300,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Join this tour",style: TextStyle(fontSize: 25,color: Colors.white),)
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
