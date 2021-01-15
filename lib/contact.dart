import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.of(context).size.width >= 800;
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
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      image: AssetImage("assets/contact.gif"),
                      fit: BoxFit.fitHeight)),
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.width / 3,
                  width: MediaQuery.of(context).size.width / 4,
                  // color: Colors.red,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CONTACT US",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Abin Pyakurel",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 20),
                        ),
                        Text(
                          "BAS Agent",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 20),
                        ),
                        Text(
                          "Certified Bookkeeper",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 20),
                        ),
                        Text(
                          "E: info@finaad.com.au",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 20),
                        ),
                        Text(
                          "M: 0415 294 559",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
                child: Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.5,
                    width: MediaQuery.of(context).size.width / 1.5,
                    // color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 30, right: 30, bottom: 10),
                          child: Text(
                            "SEND US YOUR QUERIES",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: TextFormField(
                            style: TextStyle(color: Colors.grey),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2.0,
                                  ),
                                ),
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(left: 8, right: 3),
                                  child: Icon(Icons.person, color: Colors.grey),
                                ),
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                hintText: "First name",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0))),
                            validator: (val) =>
                                val.isEmpty ? 'Enter your first name' : null,
                            onChanged: (val) {
                              // setState(() => email = (val));
                            },
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: TextFormField(
                            style: TextStyle(color: Colors.grey),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2.0,
                                  ),
                                ),
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(left: 8, right: 3),
                                  child: Icon(Icons.person_add,
                                      color: Colors.grey),
                                ),
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                hintText: "Last name",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0))),
                            validator: (val) =>
                                val.isEmpty ? 'Enter your last name' : null,
                            onChanged: (val) {},
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: TextFormField(
                            style: TextStyle(color: Colors.grey),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2.0,
                                  ),
                                ),
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(left: 8, right: 3),
                                  child: Icon(Icons.phone_android,
                                      color: Colors.grey),
                                ),
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                hintText: "Phone",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0))),
                            validator: (val) =>
                                val.isEmpty ? 'Enter your phone' : null,
                            onChanged: (val) {},
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: TextFormField(
                            style: TextStyle(color: Colors.grey),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2.0,
                                  ),
                                ),
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(left: 8, right: 3),
                                  child: Icon(Icons.mail, color: Colors.grey),
                                ),
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                hintText: "Email",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0))),
                            validator: (val) =>
                                val.isEmpty ? 'Enter your email' : null,
                            onChanged: (val) {},
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: TextFormField(
                            maxLines: 3,
                            textInputAction: TextInputAction.go,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey[200],
                                fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                              ),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                              contentPadding:
                                  EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                              hintText: "Comment",
                            ),
                            validator: (val) =>
                                val.isEmpty ? 'Enter your comment' : null,
                            onChanged: (val) {},
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Container(
                              width: isScreenWide
                                  ? MediaQuery.of(context).size.width / 6
                                  : MediaQuery.of(context).size.width / 3,
                              height: MediaQuery.of(context).size.height / 18,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)),
                                color: Color.fromRGBO(194, 24, 91, 1),
                                focusColor: Colors.green,
                                hoverColor: Colors.green,
                                splashColor: Colors.green[100],
                                disabledTextColor: Colors.black,
                                onPressed: () {},
                                textColor: Colors.white,
                                child: Text(
                                  "SUBMIT",
                                  style: TextStyle(
                                      fontSize: isScreenWide
                                          ? MediaQuery.of(context).size.width /
                                              80
                                          : 13,
                                      color: Colors.white),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
