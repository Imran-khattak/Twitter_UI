import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitter_ui/pages/profile_page.dart';
import 'package:twitter_ui/utils/feed_container.dart';

import 'package:twitter_ui/utils/text_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          //image: DecorationImage(
          //    image: AssetImage('images/bgr4.jpg'), fit: BoxFit.cover)
          // color: Color.fromRGBO(54, 65, 78, 1),
          color: Color.fromRGBO(56, 69, 81, 1)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          FontAwesomeIcons.twitter,
                          size: 30,
                          color: const Color(0xff1da1f2),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Add',
                                  style: GoogleFonts.lato(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 33,
                                backgroundColor: Color(0xff1da1f2),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg?auto=compress&cs=tinysrgb&w=600'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Natashah',
                                  style: GoogleFonts.lato(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 33,
                                backgroundColor: Color(0xffc4c4c4),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://images.pexels.com/photos/842548/pexels-photo-842548.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Elijah',
                                  style: GoogleFonts.lato(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 33,
                                backgroundColor: Color(0xff1da1f2),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://images.pexels.com/photos/6516347/pexels-photo-6516347.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Zahri K',
                                  style: GoogleFonts.lato(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 33,
                                backgroundColor: Color(0xffc4c4c4),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://images.pexels.com/photos/3444087/pexels-photo-3444087.jpeg?auto=compress&cs=tinysrgb&w=600'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Luna Maya',
                                  style: GoogleFonts.lato(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 33,
                                backgroundColor: Color(0xff1da1f2),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://images.pexels.com/photos/3754294/pexels-photo-3754294.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Sophia',
                                  style: GoogleFonts.lato(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 2,
                    color: Color(0xffc4c4c4),
                    endIndent: 20.3,
                    indent: 20.3,
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()));
                    },
                    child: FeedContainer(
                      hight: 400,
                      width: 360,
                      name: 'Imran Khattak',
                      userhandle: '@imranktk',
                      profile:
                          'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600',
                      tweet:
                          'A good API is not just easy to use but also \n hard to misuse',
                      postimge:
                          'https://images.unsplash.com/photo-1622151834677-70f982c9adef?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=786&q=80',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFeed(
                    hight: 200,
                    width: 360,
                    name: 'Tannya',
                    userhandle: '@tannyk',
                    image:
                        'https://images.pexels.com/photos/821413/pexels-photo-821413.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    tweet:
                        "The real challange for software developers is\nto create something that people actually use.",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FeedContainer(
                    hight: 400,
                    width: 360,
                    name: 'Tanya Rajhans',
                    userhandle: '@tanyarajhns',
                    profile:
                        'https://images.pexels.com/photos/774095/pexels-photo-774095.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    tweet:
                        'Everybody wants to try and write code but \nnobody wants to sit down and debug',
                    postimge:
                        'https://images.pexels.com/photos/935743/pexels-photo-935743.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFeed(
                    hight: 200,
                    width: 360,
                    name: 'Nekhil',
                    userhandle: '@nik',
                    image:
                        'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=600',
                    tweet:
                        "Teaching is more a way for the teacher to learn\n than for the student to learn.",
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
