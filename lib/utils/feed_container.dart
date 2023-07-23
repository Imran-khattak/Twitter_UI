import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedContainer extends StatelessWidget {
  double hight;
  double width;
  String name;
  String userhandle;
  String profile;
  String postimge;
  String tweet;
  FeedContainer(
      {super.key,
      required this.hight,
      required this.width,
      required this.name,
      required this.userhandle,
      required this.profile,
      required this.postimge,
      required this.tweet});

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
                            backgroundImage: NetworkImage(profile),
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
                          padding: const EdgeInsets.only(left: 150),
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
                      tweet,
                      style:
                          GoogleFonts.lato(fontSize: 15, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Text(
                          '@edcarry',
                          style: GoogleFonts.lato(
                              fontSize: 15, color: Colors.lightBlue),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '@lunapyk',
                          style: GoogleFonts.lato(
                              fontSize: 15, color: Colors.lightBlue),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Container(
                      height: 200,
                      width: 330,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: NetworkImage(postimge),
                          fit: BoxFit.cover,
                        ),
                      ),
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
                                '34',
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
                                '345',
                                style: GoogleFonts.lato(
                                    fontSize: 15, color: Color(0xffc4c4c4)),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.favorite_border_outlined,
                              color: Color(0xffc4c4c4),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                '34k',
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
                                '454k',
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
