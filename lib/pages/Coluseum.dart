import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Coluseum extends StatefulWidget {
  @override
  _ColuseumState createState() => _ColuseumState();
}

class _ColuseumState extends State<Coluseum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        backgroundColor: Colors.deepOrange,
        title: Text('Coluseum'),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            child: Container(
              height: 200.0,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                  image: DecorationImage(
                      image: new AssetImage("assets/15.jpg"),
                      fit: BoxFit.fill)),
            ),
          ),
          Text(
            "Coluseum",
            style: GoogleFonts.inter(
              color: Colors.blueAccent,
              fontSize: 40,
            ),
          ),
          Text(
            "The Blue Lounge is a comfortable lounge present in the ground floor of the club. Perfect for small group gatherings like office parties, get togethers amongst friends etc \n \nCapacity : 15 people\n \n \n \n ",
            style: GoogleFonts.inter(
                fontSize: 20
            ),
          ),
          SizedBox(
              width: double.infinity,
              height: 60,
              child: ButtonTheme(
                child: RaisedButton(
                    color: Colors.deepOrange,
                    onPressed: () {
                      Navigator.pushNamed(context, "/bookingcalendar");
                    },
                    child: Text('Book',
                        style: GoogleFonts.inter(color: Colors.white, fontSize: 18))),
              )),
        ],
      ),
    );
  }
}
