import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFeed extends StatelessWidget {
  double hight;
  double width;
  String image;
  String tweet;
  String name;
  String userhandle;
  TextFeed(
      {super.key,
      required this.hight,
      required this.width,
      required this.image,
      required this.name,
      required this.tweet,
      required this.userhandle});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
          height: hight,
          width: width,
          child: Stack(
            children: [
              //blurr effect..
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 2,
                  sigmaY: 2,
                ),
                child: Container(),
              ),

              //gradient effect..
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white.withOpacity(0.3)),
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.white.withOpacity(0.3),
                          Colors.white.withOpacity(0.1)
                        ])),
              ),

              //child..

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 10,
                    ),
                    child: Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(image),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: GoogleFonts.lato(
                                  fontSize: 16, color: Colors.white),
                            ),
                            Text(
                              userhandle,
                              style: GoogleFonts.lato(
                                  fontSize: 14, color: Color(0xffc4c4c4)),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2, bottom: 15),
                          child: Icon(
                            Icons.verified_sharp,
                            size: 17,
                            color: Colors.blue,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 200),
                          child: Icon(
                            Icons.more_vert,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      tweet.toString(),
                      style:
                          GoogleFonts.lato(fontSize: 15, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Text(
                          '@roak',
                          style: GoogleFonts.lato(
                              fontSize: 15, color: Colors.lightBlue),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '@striek',
                          style: GoogleFonts.lato(
                              fontSize: 15, color: Colors.lightBlue),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 15, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.chat_bubble,
                              color: Color(0xffc4c4c4),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                '109',
                                style: GoogleFonts.lato(
                                    fontSize: 15, color: Color(0xffc4c4c4)),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.retweet,
                              color: Color(0xffc4c4c4),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 7),
                              child: Text(
                                '663',
                                style: GoogleFonts.lato(
                                    fontSize: 15, color: Color(0xffc4c4c4)),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.favorite_sharp,
                              color: Colors.red,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                '86k',
                                style: GoogleFonts.lato(
                                    fontSize: 15, color: Color(0xffc4c4c4)),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.ios_share_outlined,
                              color: Color(0xffc4c4c4),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                '765k',
                                style: GoogleFonts.lato(
                                    fontSize: 15, color: Color(0xffc4c4c4)),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
