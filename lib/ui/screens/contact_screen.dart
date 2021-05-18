import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key key}) : super(key: key);

  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  TextEditingController subjectController = TextEditingController();
  TextEditingController bodyController = TextEditingController();

  String myEmail = 'contact@williamdavies.no';

  _openEmail() async {
    var url = 'mailto:$myEmail';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height / 100 * 16,
            left: MediaQuery.of(context).size.width / 100 * 2.6,
            child: Container(
              height: MediaQuery.of(context).size.height / 100 * 10.5,
              color: Colors.black,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: AnimatedDefaultTextStyle(
                  duration: Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  child: Text(
                    "Contact",
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 100 * 28.5,
            left: MediaQuery.of(context).size.width / 100 * 2.75,
            child: Container(
              height: MediaQuery.of(context).size.height / 100 * 2.5,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: AnimatedDefaultTextStyle(
                  duration: Duration(seconds: 0),
                  curve: Curves.fastLinearToSlowEaseIn,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontWeight: FontWeight.w100,
                  ),
                  child: Row(
                    children: [
                      Text(
                        " Get in touch via the form below, or by emailing ",
                      ),
                      InkWell(
                        onTap: () {
                          _openEmail();
                        },
                        // onHover: (h) {},
                        focusColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        child: Text(
                          "contact@williamdavies.no",
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 100 * 35,
              left: MediaQuery.of(context).size.width / 100 * 2.75,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: MediaQuery.of(context).size.width),
                Container(
                  width: MediaQuery.of(context).size.width / 100 * 25,
                  child: TextField(
                    controller: subjectController,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Subject",
                      contentPadding: EdgeInsets.all(20.0),
                      hintStyle: TextStyle(
                        color: Colors.white.withOpacity(0.75),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        borderSide: BorderSide(
                            width: 1, color: Colors.white.withOpacity(0.75)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        borderSide: BorderSide(width: 2, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height / 100 * 2.5),
                Container(
                  width: MediaQuery.of(context).size.width / 100 * 25,
                  // height: MediaQuery.of(context).size.height / 100 * 25,
                  child: TextField(
                    controller: bodyController,
                    minLines: 10,
                    maxLines: 10,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Body",
                      contentPadding: EdgeInsets.all(20.0),
                      hintStyle: TextStyle(
                        color: Colors.white.withOpacity(0.75),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        borderSide: BorderSide(
                            width: 1, color: Colors.white.withOpacity(0.75)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        borderSide: BorderSide(width: 2, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height / 100 * 2.5),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 100 * 18,
                  ),
                  child: FlatButton(
                    onPressed: () async {
                      // Implement OnPressed here
                    },
                    focusColor: Colors.white,
                    textColor: Colors.white,
                    padding: EdgeInsets.only(
                        top: 25.0, bottom: 25.0, left: 50.0, right: 50.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    child: Text(
                      "SEND",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 100 * 12.5,
            left: MediaQuery.of(context).size.width / 100 * 52.5,
            child: Container(
              height: MediaQuery.of(context).size.height / 100 * 75,
              width: MediaQuery.of(context).size.width / 100 * 45,
              child: Image.asset(
                'images/contact.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
