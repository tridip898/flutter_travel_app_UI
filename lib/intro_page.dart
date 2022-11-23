import 'package:flutter/material.dart';
import 'package:travel_app_ui/homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("lib/images/scene.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.indigoAccent.withOpacity(0.2),
                          blurRadius: 100,
                          spreadRadius: 20,
                          offset: Offset(10, 10))
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Travel Anywhere In The World Without Any Hassle",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "If you like to travel a lot, this is your place! Here you can travel your favorite place",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18,color: Colors.grey.shade700 ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 65,
                    width: MediaQuery.of(context).size.width*0.42,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Text("Skip",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                  ),
                 MaterialButton(
                   onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                   },
                   height: 65,
                   child: Text("Next",style: TextStyle(fontSize: 20,color: Colors.grey.shade100),),
                   color: Colors.blue,
                   padding: EdgeInsets.only(left: 60,right: 60),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(30)
                   ),
                 )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
