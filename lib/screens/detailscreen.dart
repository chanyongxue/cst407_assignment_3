import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jikan_api/jikan_api.dart';
import 'package:like_button/like_button.dart';
import '../models/database_connection.dart';

class AnimeDetails extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    final Top top = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          top.title,
          overflow: TextOverflow.clip,
          textAlign: TextAlign.center,
        ),

        //liking function

        actions: <Widget>[
          LikeButton(
              size: 30,
              circleColor:
                  CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
              bubblesColor: BubblesColor(
                dotPrimaryColor: Color(0xff33b5e5),
                dotSecondaryColor: Color(0xff0099cc),
              ),
              likeCountPadding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              //onTap: (isLiked) => 
              ),
        ],
      ),


      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Divider(
              color: Colors.transparent,
            ),
            Hero(
              tag: top.malId,
              child: Image.network(top.imageUrl),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(100, 30, 0, 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Details",
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                    Divider(
                      color: Colors.transparent,
                    ),
                    Text(
                      "Episodes: " + top.episodes.toString(),
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      "Start Date: " + top.startDate,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      "End Date: " + top.endDate,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      "Score: " + top.score.toString(),
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      "Type: " + top.type,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
