import 'package:finance_app_ui/colors.dart';
import 'package:finance_app_ui/transaction_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_animate/flutter_animate.dart';
import 'package:icon_badge/icon_badge.dart';

class DailyScreen extends StatefulWidget {
  const DailyScreen({super.key});

  @override
  State<DailyScreen> createState() => _DailyScreenState();
}

class _DailyScreenState extends State<DailyScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: 10,
              ),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: grey.withOpacity(0.03),
                    spreadRadius: 10,
                    blurRadius: 3,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  bottom: 25,
                  right: 20,
                  left: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TransactionScreen(),
                              ),
                            );
                          },
                          child: Icon(Icons.bar_chart),
                        ),
                        Icon(Icons.more_vert),
                      ],
                    ),
                    SizedBox(height: 15),
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("images/profile.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                            .animate(delay: const Duration(milliseconds: 500))
                            .slideY(
                              begin: 1,
                              duration: const Duration(
                                milliseconds: 1200,
                              ),
                              curve: Curves.fastLinearToSlowEaseIn,
                            ),
                        SizedBox(height: 15),
                        Container(
                          width: (size.width - 40) * 0.6,
                          child: Column(
                            children: [
                              Text(
                                "Frank White",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: mainFontColor,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Flutter Developer",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: black,
                                ),
                              ),
                            ],
                          ),
                        )
                            .animate(delay: const Duration(milliseconds: 500))
                            .slideY(
                              begin: 1,
                              duration: const Duration(
                                milliseconds: 800,
                              ),
                              curve: Curves.fastLinearToSlowEaseIn,
                            ),
                      ],
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "\$8,900",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: mainFontColor,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Income",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w100,
                                color: black,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 0.5,
                          height: 40,
                          color: black.withOpacity(0.3),
                        ),
                        Column(
                          children: [
                            Text(
                              "\$5,500",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: mainFontColor,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Expenses",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w100,
                                color: black,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 0.5,
                          height: 40,
                          color: black.withOpacity(0.3),
                        ),
                        Column(
                          children: [
                            Text(
                              "\$6,700",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: mainFontColor,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Loan",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w100,
                                color: black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ).animate(delay: const Duration(milliseconds: 500)).slideY(
                          begin: 1,
                          duration: const Duration(
                            milliseconds: 600,
                          ),
                          curve: Curves.fastLinearToSlowEaseIn,
                        ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Overview",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: mainFontColor,
                            ),
                          ),
                          SizedBox(width: 10),
                          badges.Badge(
                            badgeContent: Text(
                              "3",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            position: badges.BadgePosition.topEnd(),
                            showBadge: true,
                            ignorePointer: false,
                            // badgeAnimation: badges.BadgeAnimation.slide(toAnimate: true, animation(secons: 1),),
                            badgeStyle: badges.BadgeStyle(
                              badgeColor: Colors.red,
                              padding: EdgeInsets.all(6),
                              shape: badges.BadgeShape.circle,
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2),
                              // badgeGradient: badges.BadgeGradient.linear(
                              //   colors: [Colors.red, Colors.black],
                              // ),
                              elevation: 4,
                            ),
                            child: Icon(
                              Icons.notifications_none,
                              size: 26,
                              color: Color(0xFF4C53A5),
                            ),
                          ),
                          // IconBadge(
                          //   icon: Icon(Icons.notifications_none),
                          //   itemCount: 1,
                          //   badgeColor: Colors.red,
                          //   itemColor: mainFontColor,
                          //   hideZero: true,
                          //   top: -1,
                          //   onTap: () {},
                          // ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "June 06, 2023",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: mainFontColor,
                    ),
                  ),
                ],
              ),
            ).animate().fade(duration: const Duration(milliseconds: 800)),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 20,
                            left: 25,
                            right: 25,
                          ),
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: grey.withOpacity(0.03),
                                spreadRadius: 10,
                                blurRadius: 3,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              left: 20,
                              right: 20,
                              bottom: 10,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: arrowbgfColor,
                                    borderRadius: BorderRadius.circular(
                                      15,
                                    ),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_upward_rounded,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: Container(
                                    width: (size.width - 40) * 0.7,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Sent",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "Sending Payment to Clients",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: black.withOpacity(0.5),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "\$150",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: red,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                          .animate()
                          .fade(duration: const Duration(milliseconds: 400))
                          .slideX(),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 10,
                            left: 25,
                            right: 25,
                          ),
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: grey.withOpacity(0.03),
                                spreadRadius: 10,
                                blurRadius: 3,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                              right: 20,
                              left: 20,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: arrowbgfColor,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_downward_rounded,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Container(
                                    width: (size.width - 40) * 0.7,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Receive",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "Receving payment from company",
                                          style: TextStyle(
                                            fontSize: 11.7,
                                            color: black.withOpacity(0.5),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "\$250",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: green,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                          .animate()
                          .fade(duration: const Duration(milliseconds: 600))
                          .slideX(),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 10,
                            left: 25,
                            right: 25,
                          ),
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(
                              25,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: grey.withOpacity(0.03),
                                spreadRadius: 10,
                                blurRadius: 3,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                              right: 20,
                              left: 20,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: arrowbgfColor,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      CupertinoIcons.money_dollar,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: Container(
                                    width: (size.width - 40) * 0.7,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Loan",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "Loan for the card",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: black.withOpacity(0.5),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "\$400",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: red,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                          .animate()
                          .fade(duration: const Duration(milliseconds: 800))
                          .slideX(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
