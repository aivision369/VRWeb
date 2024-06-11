import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant.dart';
import 'strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final imageHeight = screenHeight * 0.8;

    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.topLeft,
          radius: 0.5,
          colors: [Color(0xffa3f0fb), kBG],
          stops: [0.0, 0.5],
        ),
      ),
      //color: kBG,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Left top corner app icon
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/img_logo.png',
                        width: 40,
                        height: 40,
                      ),
                      Text(
                        AppString.cmp,
                        style: kHeadingStyle,
                      ),
                    ],
                  ),
                  // Center menu option with rounded background
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          AppString.home,
                          style: kMenuLblStyle,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          AppString.services,
                          style: kMenuLblStyle,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          AppString.portfolio,
                          style: kMenuLblStyle,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                      ],
                    ),
                  ),
                  // Right top corner rounded login button
                  Padding(
                    padding: const EdgeInsets.only(right: 100.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, //backgroundColor,
                        //onPrimary: textColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(color: Colors.black, width: 2.0),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 17),
                      ),
                      onPressed: () {},
                      child: Text(
                        AppString.login,
                        style: kMenuLblStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppString.lblVirtual,
                        style: GoogleFonts.exo(
                            fontSize: 55,
                            fontWeight: FontWeight.w400,
                            color: Colors.black45,
                            decoration: TextDecoration.none,
                            letterSpacing: 1),
                      ),
                      Text(
                        AppString.lblMade,
                        style: GoogleFonts.exo(
                            fontSize: 65,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            letterSpacing: 1),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        AppString.lblDes,
                        style: GoogleFonts.exo(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                            decoration: TextDecoration.none,
                            letterSpacing: 1),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(width: 2, color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Text(
                              AppString.lblBuyNoW,
                              style: GoogleFonts.exo(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  letterSpacing: 1),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                border:
                                    Border.all(width: 2, color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Row(
                              children: [
                                Text(
                                  AppString.lblPlayNow,
                                  style: GoogleFonts.exo(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                      letterSpacing: 1),
                                ),
                                SizedBox(width: 8),
                                Image.asset(
                                  "assets/images/down_arrow.png",
                                  height: 15,
                                  width: 15,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/img_stick.png",
                            height: 60,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            "assets/images/img_game.png",
                            height: 60,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            "assets/images/img_vr.png",
                            height: 60,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "150K",
                                style: GoogleFonts.exo(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    letterSpacing: 1),
                              ),

                              Text(
                                AppString.lblActiveUser,
                                style: GoogleFonts.exo(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54,
                                    decoration: TextDecoration.none,
                                    letterSpacing: 1),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                )),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: imageHeight,
                      //width: imageWidth,
                      child: Image.asset(
                        "assets/images/img_main_left.png",
                      ),
                      // Image.asset("assets/images/il_first_fold.png",
                      //   scale: 1,)
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
