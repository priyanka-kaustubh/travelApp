import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../screens/bestDeal_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.25,
                width: MediaQuery.of(context).size.width,

                color: Color(0xfff1b3065),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0,bottom: 15.0),
                      child: Text(
                        "Where do you want to travel?",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 25.0,top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10.0),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white
                            ),
                            child: SvgPicture.asset(
                              "assets/images/menu.svg",

                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(left: 35.0, right: 35.0),
                            height: 40,
                            width: 150.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Select Destination",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                //shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(30.0)
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.all(12.0),
                            margin: EdgeInsets.only(right: 25.0),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white
                            ),

                            child: SvgPicture.asset(
                              "assets/images/search.svg",
                              color: Colors.blueAccent,

                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 20.0, left: 20.0),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Best Deals",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Sorted by lower price",
                            style: TextStyle(
                                fontSize: 11.0,
                                color: Colors.grey
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.20,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index){
                            return GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => BestDealPage() ),);
                              },


                              child: Container(
                                margin: EdgeInsets.only(right: 15.0),
                                padding: EdgeInsets.all(12.0),

                                width: MediaQuery.of(context).size.width*0.40,

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color(0xfffe7eef7),
                                ),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "EI Cario",
                                              style: TextStyle(
                                                  fontSize: 10.0,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                            Text(
                                              "Egypt",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.w500
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 50.0),
                                          child: SvgPicture.asset(
                                            "assets/images/star.svg",
                                            height: 10.0,
                                            width: 10.0,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 4.0),
                                          child: Text(
                                            "4.3",
                                            style: TextStyle(
                                                color: Color(0xfffffb42c),
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w700
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 60.0),
                                          padding: EdgeInsets.only(left: 10.0, top: 5.0),
                                          height: 20.0,
                                          width: 40.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color: Colors.white,
                                          ),
                                          child: Text(
                                            "More",
                                            style: TextStyle(
                                                color: Colors.blueAccent,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 8.0
                                            ),
                                          ),
                                        ),
                                        Container(

                                          margin: EdgeInsets.only(top: 60.0,left: 30.0),
                                          padding: EdgeInsets.only(left: 10.0, top: 5.0),
                                          height: 20.0,
                                          width: 40.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color: Colors.blueAccent,
                                          ),
                                          child: Text(
                                            "\$ 260",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 8.0
                                            ),
                                          ),
                                        ),

                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          }

                      ),
                    ),
                    Text(
                      "Popular Destinations",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Sorted by higher rating",
                            style: TextStyle(
                                fontSize: 11.0,
                                color: Colors.grey
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.40,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index){
                            return Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 15.0),
                                  padding: EdgeInsets.all(12.0),

                                  height: MediaQuery.of(context).size.height*0.20,
                                  width: MediaQuery.of(context).size.width*0.40,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Color(0xfffe7eef7),
                                  ),

                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 0.0),
                                  //padding: EdgeInsets.all(8.0),
                                  height: MediaQuery.of(context).size.height*0.20,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Cancum",
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),

                                          Text(
                                            "Mexico",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12.0
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(left: 50.0),
                                                child: SvgPicture.asset(
                                                  "assets/images/star.svg",
                                                  height: 10.0,
                                                  width: 10.0,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 4.0),
                                                child: Text(
                                                  "4.3",
                                                  style: TextStyle(
                                                      color: Color(0xfffffb42c),
                                                      fontSize: 12.0,
                                                      fontWeight: FontWeight.w700
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),

                                          Text(
                                            "848 Reviews",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12.0
                                            ),
                                          )],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            );
                          }

                      ),
                    ),
                  ],
                ),
              )

            ],
          )),
    );
  }
}
