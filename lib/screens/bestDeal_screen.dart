import 'package:flutter/material.dart';


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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(
              height: 20.0,
            ),

            Container(
              margin: EdgeInsets.only(left: 15.0),
              child: Text(
                "Included",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,

                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.0),
              child: Text(
                "For more details press on the icons.",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 10.0,
                  color: Colors.grey[500],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
