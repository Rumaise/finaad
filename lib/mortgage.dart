import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:finaad/animated_background.dart';
import 'package:finaad/animated_curve.dart';
import 'package:finaad/mobileView/mortgageMobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mailto/mailto.dart';
import 'package:sendgrid_mailer/sendgrid_mailer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:sendgrid_mailer/sendgrid_mailer.dart' as sg;

class Mortgage extends StatefulWidget {
  @override
  _MortgageState createState() => _MortgageState();
}

class _MortgageState extends State<Mortgage> {
  final List<String> imgList = [
    "assets/h.png",
  ];

  var url = "https://api.sendgrid.com/v3/mail/send";
  @override
  sendMail() async {
    // final mailtoLink = Mailto(
    //   to: ['to@example.com'],
    //   cc: ['cc1@example.com', 'cc2@example.com'],
    //   subject: 'mailto example subject',
    //   body: 'mailto example body',
    // );
    // await launch('$mailtoLink');
    String api_KEy =
        "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";
    // var response = await http.post(url, body: {
    //   "personalizations": [
    //     {
    //       "to": [
    //         {"email": "rumaise18bcs@iiitkottayam.ac.in"}
    //       ],
    //       "subject": "Hello, World!"
    //     }
    //   ],
    //   "from": {"email": "puthumannilrumaiz@gmail.com"},
    //   "content": [
    //     {"type": "text/plain", "value": "Hello, World!"}
    //   ]
    // });
    // print('Response status: ${response.statusCode}');
    // print('Response body: ${response.body}');
    final mailer = sg.Mailer(api_KEy);

    final toAddress = Address('rumaise18bcs@iiitkottayam.ac.in');
    final fromAddress = Address('puthumannilrumaiz@gmail.com');
    final content = Content('text/plain', 'Hello World!');
    final subject = 'Hello Subject!';
    final personalization = Personalization([toAddress]);

    final email = Email([personalization], fromAddress, content.toString());

    mailer.send(email).then((result) => {print(result)});
  }

  onBottom(Widget child) => Positioned.fill(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: child,
        ),
      );
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    bool isScreenWide = MediaQuery.of(context).size.width >= 800;
    if (isScreenWide) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.purple,
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 20,
                        width: MediaQuery.of(context).size.width / 2,
                        child: Row(
                          children: [
                            Container(child: Image.asset("assets/finaad.jpeg")),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(
                                "98% customer",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(
                                "Satisfaction rating",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        height: MediaQuery.of(context).size.height / 20,
                        width: MediaQuery.of(context).size.width / 8,
                        child: Center(
                          child: Text(
                            "Call us on 0488 851 494",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 1,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(child: AnimatedBackground()),
                      onBottom(AnimatedWave(
                        height: 180,
                        speed: 1.0,
                      )),
                      onBottom(AnimatedWave(
                        height: 120,
                        speed: 0.9,
                        offset: pi,
                      )),
                      onBottom(AnimatedWave(
                        height: 220,
                        speed: 1.2,
                        offset: pi / 2,
                      )),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.all(15),
                            height: MediaQuery.of(context).size.height / 2.5,
                            width: MediaQuery.of(context).size.width / 1.5,
                            child: Card(
                              color: Colors.grey.withOpacity(0.5),
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
                                            fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height / 1.5,
                    width: MediaQuery.of(context).size.width,

                    // color: Colors.yellow,
                    child: Stack(children: [
                      Card(
                        color: Colors.white.withOpacity(0.5),
                        elevation: 3,
                        // child: CarouselSlider(
                        //   // options:
                        //   //     CarouselOptions(height:),
                        //   options: CarouselOptions(
                        //     height: MediaQuery.of(context).size.height,
                        //     aspectRatio: 16 / 9,
                        //     viewportFraction: 0.8,
                        //     initialPage: 0,
                        //     enableInfiniteScroll: true,
                        //     reverse: false,
                        //     autoPlay: true,
                        //     autoPlayInterval: Duration(seconds: 3),
                        //     autoPlayAnimationDuration:
                        //         Duration(milliseconds: 800),
                        //     autoPlayCurve: Curves.fastOutSlowIn,
                        //     enlargeCenterPage: true,
                        //     // onPageChanged: callbackFunction,
                        //     scrollDirection: Axis.horizontal,
                        //   ),
                        //   items: imgList.map((i) {
                        //     return Builder(
                        //       builder: (BuildContext context) {
                        //         return Container(
                        //             width: MediaQuery.of(context).size.width,
                        //             margin:
                        //                 EdgeInsets.symmetric(horizontal: 5.0),
                        //             decoration:
                        //                 BoxDecoration(color: Colors.white),
                        //             child: Image.asset(
                        //               i,
                        //               fit: BoxFit.contain,
                        //             ));
                        //       },
                        //     );
                        //   }).toList(),
                        // ),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/bg.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 80,
                        bottom: MediaQuery.of(context).size.height / 10,
                        child: Container(
                          height: MediaQuery.of(context).size.height / 2.3,
                          width: MediaQuery.of(context).size.width / 3.4,
                          // color: Colors.red,
                          child: Card(
                            color: Colors.grey.withOpacity(0.5),
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 3,
                            child: Column(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                  width:
                                      MediaQuery.of(context).size.width / 3.4,
                                  color: Colors.green,
                                  child: Center(
                                    child: Text(
                                      "Calculate Your Mortgage Payments",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 21,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Text(
                                        "This calculator estimates your minimum monthly mortgage payments by",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13),
                                      ),
                                      Text(
                                        "analysing the loan amount, the length of the mortgage, and the interest rate.",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13),
                                      ),
                                      Form(
                                          child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 26, bottom: 0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Loan Amount",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10,
                                                left: 24,
                                                right: 24,
                                                bottom: 10),
                                            child: TextFormField(
                                              inputFormatters: [
                                                new LengthLimitingTextInputFormatter(
                                                    20),
                                                new WhitelistingTextInputFormatter(
                                                    RegExp("[0-9]")),
                                              ],
                                              style:
                                                  TextStyle(color: Colors.grey),
                                              decoration: InputDecoration(
                                                  // labelText: 'Name',
                                                  filled: true,
                                                  fillColor: Color.fromRGBO(
                                                      248, 248, 253, 1),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    borderSide: BorderSide(
                                                      color: Colors.grey,
                                                      width: 2.0,
                                                    ),
                                                  ),
                                                  hintStyle: TextStyle(
                                                      color: Color.fromRGBO(
                                                          181, 184, 203, 1),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 14),
                                                  contentPadding:
                                                      EdgeInsets.fromLTRB(20.0,
                                                          15.0, 20.0, 15.0),
                                                  hintText:
                                                      "Enter Your Loan Amount",
                                                  border: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Colors.green),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0))),
                                              validator: (val) => val.isEmpty
                                                  ? 'Enter your email'
                                                  : null,
                                              onChanged: (val) {},
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    8,
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 10,
                                                              left: 26,
                                                              bottom: 0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "Interest Rate:",
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 10,
                                                              left: 24,
                                                              right: 24,
                                                              bottom: 10),
                                                      child: TextFormField(
                                                        inputFormatters: [
                                                          new LengthLimitingTextInputFormatter(
                                                              20),
                                                          new WhitelistingTextInputFormatter(
                                                              RegExp("[0-9]")),
                                                        ],
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                        decoration:
                                                            InputDecoration(
                                                                // labelText: 'Name',
                                                                filled: true,
                                                                fillColor:
                                                                    Color.fromRGBO(
                                                                        248,
                                                                        248,
                                                                        253,
                                                                        1),
                                                                enabledBorder:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Colors
                                                                        .grey,
                                                                    width: 2.0,
                                                                  ),
                                                                ),
                                                                hintStyle: TextStyle(
                                                                    color: Color.fromRGBO(
                                                                        181,
                                                                        184,
                                                                        203,
                                                                        1),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    fontSize:
                                                                        14),
                                                                contentPadding:
                                                                    EdgeInsets.fromLTRB(
                                                                        20.0,
                                                                        15.0,
                                                                        20.0,
                                                                        15.0),
                                                                hintText:
                                                                    "Interest Rate",
                                                                border: OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                            color: Colors.green),
                                                                    borderRadius: BorderRadius.circular(8.0))),
                                                        validator: (val) => val
                                                                .isEmpty
                                                            ? 'Enter your interest rate?'
                                                            : null,
                                                        onChanged: (val) {
                                                          // setState(() =>  = (val));
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      8,
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                top: 10,
                                                                left: 26,
                                                                bottom: 0),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "Loan Period:",
                                                              style: TextStyle(
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                top: 10,
                                                                left: 24,
                                                                right: 24,
                                                                bottom: 10),
                                                        child: TextFormField(
                                                          inputFormatters: [
                                                            new LengthLimitingTextInputFormatter(
                                                                20),
                                                            new WhitelistingTextInputFormatter(
                                                                RegExp(
                                                                    "[0-9]")),
                                                          ],
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.grey),
                                                          decoration:
                                                              InputDecoration(
                                                                  // labelText: 'Name',
                                                                  filled: true,
                                                                  fillColor:
                                                                      Color.fromRGBO(
                                                                          248,
                                                                          248,
                                                                          253,
                                                                          1),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Colors
                                                                          .grey,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                  ),
                                                                  hintStyle: TextStyle(
                                                                      color: Color.fromRGBO(
                                                                          181,
                                                                          184,
                                                                          203,
                                                                          1),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      fontSize:
                                                                          14),
                                                                  contentPadding:
                                                                      EdgeInsets.fromLTRB(
                                                                          20.0,
                                                                          15.0,
                                                                          20.0,
                                                                          15.0),
                                                                  hintText:
                                                                      "Loan Period",
                                                                  border: OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(color: Colors.green),
                                                                      borderRadius: BorderRadius.circular(8.0))),
                                                          validator: (val) => val
                                                                  .isEmpty
                                                              ? 'Enter your loan period?'
                                                              : null,
                                                          onChanged: (val) {
                                                            // setState(() =>  = (val));
                                                          },
                                                        ),
                                                      ),
                                                    ],
                                                  ))
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // color: Colors.red,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    8,
                                                child: Column(
                                                  children: <Widget>[
                                                    Padding(
                                                        padding:
                                                            const EdgeInsets.all(
                                                                8.0),
                                                        child: Container(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height /
                                                                20,
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width /
                                                                8,
                                                            child: RaisedButton(
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              onPressed: () {},
                                                              child: Center(
                                                                child: Text(
                                                                  "CALCULATE NOW",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              ),
                                                              color:
                                                                  Colors.amber,
                                                            ))),
                                                    Text(
                                                      "Or get help from an expert",
                                                      style: TextStyle(
                                                          color: Colors.green,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          left: 80,
                          bottom: MediaQuery.of(context).size.height / 10,
                          child: Container(
                              height: MediaQuery.of(context).size.height / 2.5,
                              width: MediaQuery.of(context).size.width / 3.4,
                              // color: Colors.red,
                              child: Card(
                                color: Colors.white.withOpacity(0.5),
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                elevation: 0,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Mortgage Broker Enmore",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Text(
                                            "98% customer",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Text(
                                            "Satisfaction rating",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 19,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(3.0),
                                              child: Text(
                                                "NO FEES",
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 40,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(3.0),
                                              child: Text(
                                                "for any of our",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 40,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Text(
                                            "mortgage broking",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 40,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Text(
                                            "services.",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 40,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Text(
                                            "Over 18 years we have organised 7.76 Billion dollars in loans for",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Text(
                                            "27,502 people with a 98% Customer Satisfaction Rating.",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ],
                                    )
                                  ]),
                                ),
                              )))
                    ])),
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 5,
                        width: MediaQuery.of(context).size.width / 10,
                        // color: Colors.black,
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 3,
                          semanticContainer: true,
                          child: Image.asset(
                            "assets/ham.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width / 2,
                        // color: Colors.red,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Hi,",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40),
                                ),
                                Text(
                                  "I'm your local mortgage broker.",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "We literally wrote the book on home loans and becoming mortgage free, faster.",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 25),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "'If you want to be mortgage free sooner, learn how you can apply the same methods that I used and accelerate your journey to financial freedom'",
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "– David Ham, Mortgage Australia Group Managing Director, BA Psych (Hons)",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 23),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.orange,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, left: 10, right: 0, bottom: 8),
                              child: Container(
                                width: MediaQuery.of(context).size.width / 4,
                                child: FlatButton(
                                  onPressed: () {},
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.collections_bookmark,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "Book an Appointment",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  color: Colors.green,
                                  focusColor: Colors.green,
                                  hoverColor: Colors.blue,
                                  splashColor: Colors.green[100],
                                  disabledTextColor: Colors.white,
                                  textColor: Colors.green,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                          style: BorderStyle.solid),
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, left: 10, right: 0, bottom: 8),
                              child: Container(
                                width: MediaQuery.of(context).size.width / 4,
                                child: FlatButton(
                                  onPressed: () {},
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "Get started online",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  color: Colors.green,
                                  focusColor: Colors.green,
                                  hoverColor: Colors.blue,
                                  splashColor: Colors.green[100],
                                  disabledTextColor: Colors.white,
                                  textColor: Colors.green,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                          style: BorderStyle.solid),
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, left: 10, right: 0, bottom: 8),
                              child: Container(
                                width: MediaQuery.of(context).size.width / 4,
                                child: FlatButton(
                                  onPressed: () {},
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.phone,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "COVID - we are here to help",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  color: Colors.green,
                                  focusColor: Colors.green,
                                  hoverColor: Colors.blue,
                                  splashColor: Colors.green[100],
                                  disabledTextColor: Colors.white,
                                  textColor: Colors.green,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                          style: BorderStyle.solid),
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, left: 10, right: 0, bottom: 8),
                              child: Container(
                                width: MediaQuery.of(context).size.width / 4,
                                child: FlatButton(
                                  onPressed: () {},
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.chrome_reader_mode,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "Payment defferal: what it means for you?",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  color: Colors.green,
                                  focusColor: Colors.green,
                                  hoverColor: Colors.blue,
                                  splashColor: Colors.green[100],
                                  disabledTextColor: Colors.white,
                                  textColor: Colors.green,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                          style: BorderStyle.solid),
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                              )),
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width / 3,
                        // color: Colors.red,
                        child: Image.asset("assets/connect.png"),
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 2,
                          width: MediaQuery.of(context).size.width / 3,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IntrinsicHeight(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    VerticalDivider(
                                      color: Colors.grey,
                                      thickness: 10,
                                      width: 20,
                                    ),
                                    Column(
                                      children: [
                                        Text("A Mortgage Australia Broker",
                                            style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold)),
                                        Text("Works For You, Not The Bank",
                                            style: TextStyle(
                                                fontSize: 30,
                                                color: Colors.green,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Text(
                                    "Be careful. It is getting harder every day for people to obtain finance. And if you are declined by a lender it becomes harder still because the decline is listed on your credit rating for the next seven years, making other lenders more cautious about you.",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400)),
                              )
                            ],
                          ),
                          // child: ,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 2,
                        width: MediaQuery.of(context).size.width / 2,
                        child: Card(
                          color: Colors.green,
                          semanticContainer: true,
                          elevation: 5,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          margin: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Get a great deal on your home loan",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                  " Simply fill in the form below and a home loan expert will call you.",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400)),
                              Form(
                                  key: _formKey,
                                  child: ListView(shrinkWrap: true, children: <
                                      Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              5,
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10,
                                                    left: 26,
                                                    bottom: 0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Name:",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10,
                                                    left: 24,
                                                    right: 24,
                                                    bottom: 10),
                                                child: TextFormField(
                                                  inputFormatters: [
                                                    new LengthLimitingTextInputFormatter(
                                                        20),
                                                    new WhitelistingTextInputFormatter(
                                                        RegExp("[a-zA-Z]")),
                                                  ],
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                  decoration: InputDecoration(
                                                      // labelText: 'Name',
                                                      filled: true,
                                                      fillColor: Color.fromRGBO(
                                                          248, 248, 253, 1),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      hintStyle: TextStyle(
                                                          color: Color.fromRGBO(
                                                              181, 184, 203, 1),
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 14),
                                                      contentPadding:
                                                          EdgeInsets.fromLTRB(
                                                              20.0,
                                                              15.0,
                                                              20.0,
                                                              15.0),
                                                      hintText:
                                                          "Enter your name",
                                                      border: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color:
                                                                  Colors.green),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  8.0))),
                                                  validator: (val) => val
                                                          .isEmpty
                                                      ? 'Enter your official name?'
                                                      : null,
                                                  onChanged: (val) {},
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                5,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10,
                                                          left: 26,
                                                          bottom: 0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "Phone:",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10,
                                                          left: 24,
                                                          right: 24,
                                                          bottom: 10),
                                                  child: TextFormField(
                                                    inputFormatters: [
                                                      new LengthLimitingTextInputFormatter(
                                                          20),
                                                      new WhitelistingTextInputFormatter(
                                                          RegExp("[0-9]")),
                                                    ],
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                    decoration: InputDecoration(
                                                        // labelText: 'Name',
                                                        filled: true,
                                                        fillColor: Color.fromRGBO(
                                                            248, 248, 253, 1),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors.grey,
                                                            width: 2.0,
                                                          ),
                                                        ),
                                                        hintStyle: TextStyle(
                                                            color: Color.fromRGBO(
                                                                181, 184, 203, 1),
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 14),
                                                        contentPadding:
                                                            EdgeInsets.fromLTRB(
                                                                20.0,
                                                                15.0,
                                                                20.0,
                                                                15.0),
                                                        hintText:
                                                            "Enter your phone number",
                                                        border: OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                    color: Colors
                                                                        .green),
                                                            borderRadius:
                                                                BorderRadius.circular(8.0))),
                                                    validator: (val) => val
                                                            .isEmpty
                                                        ? 'Enter your phone number'
                                                        : null,
                                                    onChanged: (val) {
                                                      // setState(() =>  = (val));
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ))
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              5,
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10,
                                                    left: 26,
                                                    bottom: 0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Email:",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10,
                                                    left: 24,
                                                    right: 24,
                                                    bottom: 10),
                                                child: TextFormField(
                                                  inputFormatters: [
                                                    new LengthLimitingTextInputFormatter(
                                                        20),
                                                    new WhitelistingTextInputFormatter(
                                                        RegExp("[a-zA-Z]")),
                                                  ],
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                  decoration: InputDecoration(
                                                      // labelText: 'Name',
                                                      filled: true,
                                                      fillColor: Color.fromRGBO(
                                                          248, 248, 253, 1),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      hintStyle: TextStyle(
                                                          color: Color.fromRGBO(
                                                              181, 184, 203, 1),
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 14),
                                                      contentPadding:
                                                          EdgeInsets.fromLTRB(20.0,
                                                              15.0, 20.0, 15.0),
                                                      hintText:
                                                          "Enter your email address",
                                                      border: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color:
                                                                  Colors.green),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  8.0))),
                                                  validator: (val) => val
                                                          .isEmpty
                                                      ? 'Enter your email address'
                                                      : null,
                                                  onChanged: (val) {},
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                5,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10,
                                                          left: 26,
                                                          bottom: 0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "Postal Code:",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10,
                                                          left: 24,
                                                          right: 24,
                                                          bottom: 10),
                                                  child: TextFormField(
                                                    inputFormatters: [
                                                      new LengthLimitingTextInputFormatter(
                                                          20),
                                                      new WhitelistingTextInputFormatter(
                                                          RegExp("[0-9]")),
                                                    ],
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                    decoration: InputDecoration(
                                                        // labelText: 'Name',
                                                        filled: true,
                                                        fillColor: Color.fromRGBO(
                                                            248, 248, 253, 1),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors.grey,
                                                            width: 2.0,
                                                          ),
                                                        ),
                                                        hintStyle: TextStyle(
                                                            color: Color.fromRGBO(
                                                                181, 184, 203, 1),
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 14),
                                                        contentPadding:
                                                            EdgeInsets.fromLTRB(
                                                                20.0,
                                                                15.0,
                                                                20.0,
                                                                15.0),
                                                        hintText:
                                                            "Enter your postal code",
                                                        border: OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                    color: Colors
                                                                        .green),
                                                            borderRadius:
                                                                BorderRadius.circular(8.0))),
                                                    validator: (val) => val
                                                            .isEmpty
                                                        ? 'Enter your postal code'
                                                        : null,
                                                    onChanged: (val) {
                                                      // setState(() =>  = (val));
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ))
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10, left: 24, bottom: 0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Message:",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10,
                                                  left: 24,
                                                  right: 24,
                                                  bottom: 10),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2.6,
                                                child: TextFormField(
                                                  maxLines: 3,
                                                  inputFormatters: [
                                                    new LengthLimitingTextInputFormatter(
                                                        20),
                                                    new WhitelistingTextInputFormatter(
                                                        RegExp("[a-zA-Z]")),
                                                  ],
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                  decoration: InputDecoration(
                                                      // labelText: 'Name',
                                                      filled: true,
                                                      fillColor: Color.fromRGBO(
                                                          248, 248, 253, 1),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      hintStyle: TextStyle(
                                                          color: Color.fromRGBO(
                                                              181, 184, 203, 1),
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 14),
                                                      contentPadding:
                                                          EdgeInsets.fromLTRB(
                                                              20.0, 15.0, 20.0, 15.0),
                                                      hintText:
                                                          "Enter your message",
                                                      border: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color:
                                                                  Colors.green),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  8.0))),
                                                  validator: (val) =>
                                                      val.isEmpty
                                                          ? 'Enter your message'
                                                          : null,
                                                  onChanged: (val) {},
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    20,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    5,
                                                child: RaisedButton(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  onPressed: () {},
                                                  child: Center(
                                                    child: InkWell(
                                                      onTap: () {
                                                        sendMail();
                                                      },
                                                      child: Text(
                                                        "ENQUIRE NOW",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  ),
                                                  color: Colors.amber,
                                                ))),
                                      ],
                                    ),
                                  ]))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 30, left: 8, right: 8, bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "We offer you thousands of products from this huge",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "list of",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                            Text(
                              " financial institutions",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Over the last 18 years, we have helped 27,318 people apply for 7.6 Billion dollars in loans with a 98.2% Customer Satisfaction Rating.",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("assets/1.jpg"),
                            Image.asset("assets/2.jpg"),
                            Image.asset("assets/3.jpg"),
                            Image.asset("assets/4.jpg"),
                            Image.asset("assets/5.jpg"),
                            Image.asset("assets/6.jpg")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("assets/7.jpg"),
                            Image.asset("assets/8.jpg"),
                            Image.asset("assets/9.jpg"),
                            Image.asset("assets/10.jpg"),
                            Image.asset("assets/11.jpg"),
                            Image.asset("assets/12.jpg")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("assets/13.jpg"),
                            Image.asset("assets/14.jpg"),
                            Image.asset("assets/15.jpg"),
                            Image.asset("assets/16.jpg"),
                            Image.asset("assets/17.jpg"),
                            Image.asset("assets/18.jpg")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("assets/19.jpg"),
                            Image.asset("assets/20.jpg"),
                            Image.asset("assets/21.jpg"),
                            Image.asset("assets/22.jpg"),
                            Image.asset("assets/23.jpg"),
                            Image.asset("assets/24.jpg")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 8,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Site powered by weebly.Managed by"),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "CheaperDomain.com.au",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    } else {
      return MortgageMobile();
    }
  }
}
