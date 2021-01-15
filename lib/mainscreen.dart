import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:finaad/bookkeeping.dart';
import 'package:finaad/contact.dart';
import 'package:finaad/mobileView/mortgageMobile.dart';
import 'package:finaad/mortgage.dart';
import 'package:finaad/services.dart';
import 'package:finaad/weworkwith.dart';
import 'package:flutter/material.dart';
import 'package:hover_effect/hover_effect.dart';
import 'package:responsive/responsive_row.dart';
import 'package:route_transitions/route_transitions.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.of(context).size.width >= 800;

    Widget alignMain() {
      if (isScreenWide) {
        return Align(
          alignment: Alignment.center,
          child: Container(
            margin: EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height / 2.8,
            width: MediaQuery.of(context).size.width / 1.5,
            child: Card(
              color: Colors.black.withOpacity(0.5),
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 3,
              margin: EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "Finaad Pty Ltd is run by a BAS Agent, certified bookkeeper, XERO advisor and QuickBook online Pro Advisor.\n\n\nIt is based in Canberra and have been providing bookkeeping services since 2014. Bookkeeper has an extensive knowledge in finance, accounting and project management for more than 10 years. \nFinaad provides weekly, fortnightly and monthly bookkeeping services.\n\nFinaad also provides a complete package of including accounts set up, software installation, accounts payable, accounts receivable, bank reconciliations, BAS/GST/IAS preparation and lodgment, We also do payroll processing (weekly/fortnightly/monthly), superannuation reconciliation, process and payment, month end and year end reconciliation to send to accountants.Staffing, Mortgage Broking is few more services Finaad is providing apart from Bookkeeping services.​",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      } else {
        return Container(
          margin: EdgeInsets.only(left: 40, right: 40, bottom: 100, top: 40),
          height: MediaQuery.of(context).size.width / 12,
          width: MediaQuery.of(context).size.width / 1,
          child: Card(
            color: Colors.black.withOpacity(0.5),
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 3,
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      "Finaad Pty Ltd is run by a BAS Agent, certified bookkeeper, XERO advisor and QuickBook online Pro Advisor.\n\n\nIt is based in Canberra and have been providing bookkeeping services since 2014. Bookkeeper has an extensive knowledge in finance, accounting and project management for more than 10 years. \nFinaad provides weekly, fortnightly and monthly bookkeeping services.\n\nFinaad also provides a complete package of including accounts set up, software installation, accounts payable, accounts receivable, bank reconciliations, BAS/GST/IAS preparation and lodgment, We also do payroll processing (weekly/fortnightly/monthly), superannuation reconciliation, process and payment, month end and year end reconciliation to send to accountants.Staffing, Mortgage Broking is few more services Finaad is providing apart from Bookkeeping services.​",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    }

    Widget alignTop() {
      if (isScreenWide) {
        return Flex(
          direction: Axis.horizontal,
          children: [
            Padding(
                padding: const EdgeInsets.only(
                    top: 8, left: 10, right: 0, bottom: 8),
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(PageRouteTransition(
                        animationType: AnimationType.slide_right,
                        builder: (context) => MainScreen()));
                  },
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "HOME",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  focusColor: Colors.green,
                  hoverColor: Colors.green,
                  splashColor: Colors.green[100],
                  disabledTextColor: Colors.white,
                  textColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(8)),
                )),
            Padding(
                padding: const EdgeInsets.only(
                    top: 8, left: 10, right: 0, bottom: 8),
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(PageRouteTransition(
                        animationType: AnimationType.slide_right,
                        builder: (context) => BookKeeping()));
                  },
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.library_books,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "BOOKKEEPING",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  focusColor: Colors.green,
                  hoverColor: Colors.green,
                  splashColor: Colors.green[100],
                  disabledTextColor: Colors.white,
                  textColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(8)),
                )),
            Padding(
                padding: const EdgeInsets.only(
                    top: 8, left: 10, right: 0, bottom: 8),
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(PageRouteTransition(
                        animationType: AnimationType.slide_right,
                        builder: (context) => Mortgage()));
                  },
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.business,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "MORTGAGE",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  focusColor: Colors.green,
                  hoverColor: Colors.green,
                  splashColor: Colors.green[100],
                  disabledTextColor: Colors.white,
                  textColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(8)),
                )),
            Padding(
                padding: const EdgeInsets.only(
                    top: 8, left: 10, right: 0, bottom: 8),
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(PageRouteTransition(
                        animationType: AnimationType.slide_right,
                        builder: (context) => Mortgage()));
                  },
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.accessible,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "NDIS",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  focusColor: Colors.green,
                  hoverColor: Colors.green,
                  splashColor: Colors.green[100],
                  disabledTextColor: Colors.white,
                  textColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(8)),
                )),
            Padding(
                padding: const EdgeInsets.only(
                    top: 8, left: 10, right: 0, bottom: 8),
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(PageRouteTransition(
                        animationType: AnimationType.slide_right,
                        builder: (context) => Service()));
                  },
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.supervised_user_circle,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "SERVICES",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  focusColor: Colors.green,
                  hoverColor: Colors.green,
                  splashColor: Colors.green[100],
                  disabledTextColor: Colors.white,
                  textColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(8)),
                )),
            Padding(
                padding: const EdgeInsets.only(
                    top: 8, left: 10, right: 0, bottom: 8),
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(PageRouteTransition(
                        animationType: AnimationType.slide_right,
                        builder: (context) => MortgageMobile()));
                  },
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.work,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "WE WORK WITH",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  focusColor: Colors.green,
                  hoverColor: Colors.green,
                  splashColor: Colors.green[100],
                  disabledTextColor: Colors.white,
                  textColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(8)),
                )),
            Padding(
                padding: const EdgeInsets.only(
                    top: 8, left: 10, right: 0, bottom: 8),
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(PageRouteTransition(
                        animationType: AnimationType.slide_right,
                        builder: (context) => Contact()));
                  },
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.contact_phone,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "CONTACT",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  focusColor: Colors.green,
                  hoverColor: Colors.green,
                  splashColor: Colors.green[100],
                  disabledTextColor: Colors.white,
                  textColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(8)),
                )),
          ],
        );
      } else {
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [Image.asset("assets/finaad.jpeg")],
        );
      }
    }

    return Scaffold(
      floatingActionButton: isScreenWide
          ? FloatingActionButton(onPressed: null)
          : FabCircularMenu(
              fabCloseColor: Colors.grey,
              fabColor: Colors.white,
              ringColor: Colors.black,
              ringDiameter: MediaQuery.of(context).size.width / 1,
              alignment: Alignment.topLeft,
              children: [
                  IconButton(
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(PageRouteTransition(
                            animationType: AnimationType.slide_right,
                            builder: (context) => MainScreen()));
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.library_books,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(PageRouteTransition(
                            animationType: AnimationType.slide_right,
                            builder: (context) => BookKeeping()));
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.business,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(PageRouteTransition(
                            animationType: AnimationType.slide_right,
                            builder: (context) => Mortgage()));
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.accessible,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(PageRouteTransition(
                            animationType: AnimationType.slide_right,
                            builder: (context) => MainScreen()));
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.supervised_user_circle,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(PageRouteTransition(
                            animationType: AnimationType.slide_right,
                            builder: (context) => Service()));
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.work,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(PageRouteTransition(
                            animationType: AnimationType.slide_right,
                            builder: (context) => WeWorkWith()));
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.stay_current_portrait,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(PageRouteTransition(
                            animationType: AnimationType.slide_right,
                            builder: (context) => Contact()));
                      }),
                ]),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Container(
                height: isScreenWide
                    ? MediaQuery.of(context).size.width / 25
                    : MediaQuery.of(context).size.width / 10,
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
                child: Stack(
                  children: [
                    alignTop(),
                  ],
                )),
            Container(
                height: MediaQuery.of(context).size.height / 1,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/back.jpg"),
                        fit: BoxFit.cover)),
                child: alignMain()),
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Flex(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        direction:
                            isScreenWide ? Axis.horizontal : Axis.vertical,
                        children: [
                          Container(
                              // margin: EdgeInsets.all(15),
                              height: isScreenWide
                                  ? MediaQuery.of(context).size.height / 4
                                  : MediaQuery.of(context).size.width / 2,
                              width: isScreenWide
                                  ? MediaQuery.of(context).size.width / 3.5
                                  : MediaQuery.of(context).size.width / 2,
                              child: HoverCard(
                                builder: (context, hovering) {
                                  return Card(
                                    color: Colors.white,
                                    semanticContainer: true,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    elevation: 5,
                                    margin: EdgeInsets.all(10),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.book,
                                            size: 100,
                                            color: Colors.purple,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(
                                              child: Text(
                                                "BOOK KEEPING",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                depth: 5,
                                // depthColor: Colors.grey[500].withOpacity(.5),
                                onTap: () {
                                  Navigator.of(context).push(
                                      PageRouteTransition(
                                          animationType:
                                              AnimationType.slide_right,
                                          builder: (context) => BookKeeping()));
                                },
                                shadow: BoxShadow(
                                    color: Colors.purple[200],
                                    blurRadius: 20,
                                    spreadRadius: -20,
                                    offset: Offset(0, 40)),
                              )),
                          Container(
                              // margin: EdgeInsets.all(15),
                              height: isScreenWide
                                  ? MediaQuery.of(context).size.height / 4
                                  : MediaQuery.of(context).size.width / 2,
                              width: isScreenWide
                                  ? MediaQuery.of(context).size.width / 3.5
                                  : MediaQuery.of(context).size.width / 2,
                              child: HoverCard(
                                builder: (context, hovering) {
                                  return Card(
                                    color: Colors.white,
                                    semanticContainer: true,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    elevation: 5,
                                    margin: EdgeInsets.all(10),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.featured_play_list,
                                            size: 100,
                                            color: Colors.purple,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(
                                              child: Text(
                                                "PAYROLL",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                depth: 5,
                                // depthColor: Colors.grey[500].withOpacity(.5),
                                onTap: () {
                                  Navigator.of(context).push(
                                      PageRouteTransition(
                                          animationType:
                                              AnimationType.slide_right,
                                          builder: (context) => BookKeeping()));
                                },
                                shadow: BoxShadow(
                                    color: Colors.purple[200],
                                    blurRadius: 20,
                                    spreadRadius: -20,
                                    offset: Offset(0, 40)),
                              )),
                          Container(
                              // margin: EdgeInsets.all(15),
                              height: isScreenWide
                                  ? MediaQuery.of(context).size.height / 4
                                  : MediaQuery.of(context).size.width / 2,
                              width: isScreenWide
                                  ? MediaQuery.of(context).size.width / 3.5
                                  : MediaQuery.of(context).size.width / 2,
                              child: HoverCard(
                                builder: (context, hovering) {
                                  return Card(
                                    color: Colors.white,
                                    semanticContainer: true,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    elevation: 5,
                                    margin: EdgeInsets.all(10),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.payment,
                                            size: 100,
                                            color: Colors.purple,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(
                                              child: Text(
                                                "RECEIVABLE & PAYABLE",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                depth: 5,
                                // depthColor: Colors.grey[500].withOpacity(.5),
                                onTap: () {
                                  Navigator.of(context).push(
                                      PageRouteTransition(
                                          animationType:
                                              AnimationType.slide_right,
                                          builder: (context) => BookKeeping()));
                                },
                                shadow: BoxShadow(
                                    color: Colors.purple[200],
                                    blurRadius: 20,
                                    spreadRadius: -20,
                                    offset: Offset(0, 40)),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
              child: Center(
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.white),
                        text: "Site powered by Weebly. Managed by",
                        children: <TextSpan>[
                      TextSpan(
                        text: 'CheaperDomains.com.au',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ])),
              ),
              // child: ,
            ),
          ],
        ),
        // child:C ,
      ),
    );
  }
}
