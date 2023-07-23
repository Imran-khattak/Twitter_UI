import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitter_ui/utils/feed_container.dart';
import 'package:twitter_ui/utils/icon_container.dart';
import 'package:twitter_ui/utils/text_container.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            // image: DecorationImage(
            //  image: AssetImage('images/bgr4.jpg'), fit: BoxFit.cover)
            // color: Color.fromRGBO(54, 65, 78, 1),
            color: Color.fromRGBO(56, 69, 81, 1)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: IconsContainer(
                              icons: Icon(
                                Icons.arrow_back_ios_new,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          IconsContainer(
                            icons: Icon(
                              Icons.settings_outlined,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50, top: 70),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(
                                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600',
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Text(
                                      'Imran Khattak',
                                      style: GoogleFonts.lato(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Text(
                                      '@imranktk',
                                      style: GoogleFonts.lato(
                                          fontSize: 16,
                                          color: Color(0xffc4c4c4),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 2, bottom: 25),
                                child: Icon(
                                  Icons.verified_sharp,
                                  size: 20,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on_sharp,
                                size: 20,
                                color: Colors.white,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  'Pakistan',
                                  style: GoogleFonts.lato(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Joined, January 2020',
                            style: GoogleFonts.lato(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Text(
                            "Programmer | Open Source Software Engineer | DSA Thread Daily Solve Leetcode Challenges\nWeb App Flutter Dev ",
                            style: GoogleFonts.lato(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 20),
                          child: Container(
                            height: 40,
                            width: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    width: 2, color: Color(0xff1da1f2))),
                            child: Center(
                              child: Text(
                                'Follow',
                                style: GoogleFonts.lato(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(
                                      0xff1da1f2,
                                    )),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //Divider(),
                        const TabBar(
                          unselectedLabelColor: Colors.white,
                          labelColor: Color(0xffc4c4c4),
                          labelStyle:
                              TextStyle(fontSize: 18, color: Colors.white),
                          indicator: BoxDecoration(
                              border: Border(
                            bottom: BorderSide(
                              width: 3,
                              color: Color(0xff1da1f2),
                            ),
                          )),
                          tabs: [
                            Tab(text: 'Tweets'),
                            Tab(
                              text: 'Media',
                            ),
                            Tab(
                              text: 'Likes',
                            ),
                          ],
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height,
                            child: TabBarView(children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  FeedContainer(
                                    hight: 400,
                                    width: 360,
                                    name: 'Imran Khattak',
                                    userhandle: '@imranktk',
                                    profile:
                                        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600',
                                    tweet:
                                        "If you find Computer Science boring you're \n learning from wrong teacher.",
                                    postimge:
                                        'https://images.pexels.com/photos/1181677/pexels-photo-1181677.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  FeedContainer(
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
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  FeedContainer(
                                    hight: 400,
                                    width: 360,
                                    name: 'Imran Khattak',
                                    userhandle: '@imranktk',
                                    profile:
                                        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600',
                                    tweet:
                                        "If you find Computer Science boring you're \n learning from wrong teacher.",
                                    postimge:
                                        'https://images.pexels.com/photos/1181677/pexels-photo-1181677.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 20,
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
                            ]))
                      ],
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
