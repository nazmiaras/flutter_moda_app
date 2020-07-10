import 'package:flutter/material.dart';

class Detay extends StatefulWidget {

  var imgPath;

  Detay({this.imgPath});

  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Hero(
          tag: widget.imgPath,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(widget.imgPath),fit: BoxFit.cover)
            ),
          ),
        ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width-30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            height: 120,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                                image: DecorationImage(image: AssetImage('assets/dress.jpg'),fit: BoxFit.contain)
                            ),
                          ),
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Laminated",style: TextStyle(fontSize: 18,fontFamily: "Montserrat",fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text("Louis Vuitton",style: TextStyle(color: Colors.grey,fontSize: 16,fontFamily: "Montserrat",fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),

                            Container(
                                height: 30,
                                width: MediaQuery.of(context).size.width-190,
                                child: Text("One button V-neck sling long-sleeved waist female stitching dress",style: TextStyle(color: Colors.grey,fontSize: 12,fontFamily: "Montserrat"),))

                          ],
                        )

                      ],
                    ),
                    Divider(),

                    Padding(
                      padding: const EdgeInsets.only(left :15.0,top: 10,bottom: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("\$6500",style: TextStyle(fontFamily: "Montserrat",fontSize: 22),),
                          Container(
                            margin: EdgeInsets.only(right: 30),
                            child: FloatingActionButton(
                              child: Center(child: Icon(Icons.arrow_forward_ios)),
                              backgroundColor: Colors.brown,
                              onPressed: (){},
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          
          Positioned(
            top: MediaQuery.of(context).size.height/2,
            left: 50,
            child: Container(
              width: 130,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Center(child: Text("Laminated",style: TextStyle(fontFamily: "Montserrat",color: Colors.white,fontWeight: FontWeight.bold),)),
                  Icon(Icons.arrow_forward_ios,color: Colors.white,size: 18,)

                ],
              ),
            ),
          )
          
      ]
      ),
    );
  }
}
