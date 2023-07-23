import 'dart:ui';

import 'package:flutter/material.dart';

class IconsContainer extends StatelessWidget {
  Widget icons;
  IconsContainer({super.key, required this.icons});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 40,
        width: 40,
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
            Center(child: icons),
          ],
        ),
      ),
    );
  }
}
