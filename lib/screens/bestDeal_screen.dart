import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class BestDealPage extends StatefulWidget {
  @override
  _BestDealPageState createState() => _BestDealPageState();
}

class _BestDealPageState extends State<BestDealPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                  "Included",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,

                  ),
                ),

              Text(
                "For more details press on the icons.",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 10.0,
                  color: Colors.grey[400],
                ),
              ),

              SizedBox(
                height: 15.0,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(3.0),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3.0,
                            color: Color(0xfff346dfa),
                          ),
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          height: 40,
                            width: 40,

                            decoration: BoxDecoration(
                              color: Color(0xfff346dfa),
                              shape: BoxShape.circle
                            ),

                            child: SvgPicture.asset(
                                "assets/images/airoplane.svg",
                              color: Colors.white,

                            )),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text("Flight",
                        style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w700,
                          color: Colors.grey[700]
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(3.0),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3.0,
                            color: Color(0xfff346dfa),
                          ),
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Container(
                            padding: EdgeInsets.all(10.0),
                            height: 40,
                            width: 40,

                            decoration: BoxDecoration(
                                color: Color(0xfff346dfa),
                                shape: BoxShape.circle
                            ),

                            child: SvgPicture.asset(
                              "assets/images/hotel.svg",
                              color: Colors.white,

                            )),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text("Hotel",
                        style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey[700]
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(3.0),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3.0,
                            color: Color(0xfff346dfa),
                          ),
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Container(
                            padding: EdgeInsets.all(10.0),
                            height: 40,
                            width: 40,

                            decoration: BoxDecoration(
                                color: Color(0xfff346dfa),
                                shape: BoxShape.circle
                            ),

                            child: SvgPicture.asset(
                              "assets/images/car.svg",
                              color: Colors.white,

                            )),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text("Car",
                        style: TextStyle(
                            fontSize: 10.0,
                          fontWeight: FontWeight.w700,
                            color: Colors.grey[700]
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(3.0),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3.0,
                            color: Color(0xfff346dfa),
                          ),
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Container(
                            padding: EdgeInsets.all(10.0),
                            height: 40,
                            width: 40,

                            decoration: BoxDecoration(
                                color: Color(0xfff346dfa),
                                shape: BoxShape.circle
                            ),

                            child: SvgPicture.asset(
                              "assets/images/tour.svg",
                              color: Colors.white,

                            )),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text("Tour",
                        style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey[700]
                        ),
                      )
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 25.0,
              ),

              Row(
                children: [
                  Text(
                    "Rating & Reviews",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.32,
                  ),
                  SvgPicture.asset(
                    "assets/images/star.svg",
                    color: Color(0xfffffb42c),
                    height: 15.0,
                    width: 15.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "4.6",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                        color: Color(0xfffffb42c)
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Sorted by recent reviews",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12.0,
                        color: Colors.grey[400]
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.grey[400],
                  ),

                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.25,
                  ),
                  Text(
                    "429 reviews",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12.0,
                        color: Colors.grey[400]
                    ),
                  ),
                ],
              ),

              Container(
                height: 140,

                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index){
                    return GestureDetector(
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.8,
                        margin: EdgeInsets.only(top:15.0, right: 13.0),
                        padding: EdgeInsets.all(10.0),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xfffe7eef7),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "London is great!",
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontWeight: FontWeight.w700,
                                    fontSize: 13,
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width*0.3,
                                ),
                                Text(
                                  "John Doe",
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                               Icon(
                                 Icons.star,
                                 color: Color(0xfffffb42c),
                                 size: 15.0,
                               ),
                                Icon(
                                  Icons.star,
                                  color: Color(0xfffffb42c),
                                  size: 15.0,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color(0xfffffb42c),
                                  size: 15.0,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color(0xfffffb42c),
                                  size: 15.0,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color(0xfffffb42c),
                                  size: 15.0,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width*0.36,
                                ),
                                Text(
                                  "12/08/18",
                                  style: TextStyle(
                                    color: Colors.grey[500],
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "Lorem Ipsum is simply dummy text of the printing and "
                                  "typesetting industry. Lorem Ipsum has been the "
                                  "industry's standard dummy text ever since the 1500s. ",
                              maxLines: 5,
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[600]

                              ),
                            ),


                          ],
                        ),
                      ),
                    );
                  },
                ),

              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Gallery",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Sorted by recent photos",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12.0,
                        color: Colors.grey[400]
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.grey[400],
                  ),
                ],
              ),

              Container(

                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index){
                    return GestureDetector(
                      child: Container(
                        width: 130,
                        margin: EdgeInsets.only(top: 10.0, right: 10.0),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xfffe7eef7),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
