import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key key}) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  bool contactMeButtonHover = false;
  bool myWorkButtonHover = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                    "About me",
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 100 * 28.5,
            left: MediaQuery.of(context).size.width / 100 * 2.75,
            child: Container(
              width: MediaQuery.of(context).size.width / 100 * 50,
              height: MediaQuery.of(context).size.height / 100 * 75,
              color: Colors.black,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        flex: 1,
                        child: AnimatedDefaultTextStyle(
                          duration: Duration(seconds: 0),
                          curve: Curves.fastLinearToSlowEaseIn,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.w100,
                            fontSize: 20.0,
                          ),
                          child: Text(
                              "Hello! My name is William Stratford Pound Davies. I was born and raised in Norway, and I am bilingual (English-Norwegian), as my family is English. I have education equivalent to an A-level in Media and Communication. I started programming at the age of 12, and quickly sought to learn more!\n\nI therefore took courses and joined coding clubs, amongst them, a coding club run by students at the University of Oslo. I continued on consistently programming for years, and eventually took my skills into the business sector. I am genuinely motivated by solving problems, and creating solutions for businesses, and consumers.\n\nI have 4+ years of experience developing natively for Android. During that time, I worked with technologies such as Java, Firebase, REST-API's, general JSON, front and back-end XML. I also have 2+ years of experience within Flutter and Dart. My knowledge from developing natively translated well, and I quickly mastered the framework and language. Other notable technologies I am familiar with include: C#, Unity, Python, HTML 5, CSS, JavaScript, and Git.\n\nI'm always interested in new and exciting opportunities, so feel free to contact me via the contact page, or check out my work!\n\n"),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 100 * 3.5,
                        child: InkWell(
                          onTap: () {
                            // implement function
                          },
                          onHover: (h) {
                            // implement function
                          },
                          focusColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: AnimatedDefaultTextStyle(
                              duration: Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              style: GoogleFonts.manrope(
                                color: Colors.white
                                    .withOpacity(myWorkButtonHover ? 1 : 0.5),
                                fontWeight: FontWeight.w300,
                              ),
                              child: Text(
                                "My work >",
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 100 * 2.5,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 100 * 3.5,
                        child: InkWell(
                          onTap: () {
                            // implement function
                          },
                          onHover: (h) {
                            setState(() {
                              contactMeButtonHover = !contactMeButtonHover;
                            });
                          },
                          focusColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: AnimatedDefaultTextStyle(
                              duration: Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              style: GoogleFonts.manrope(
                                color: Colors.white.withOpacity(
                                    contactMeButtonHover ? 1 : 0.5),
                                fontWeight: FontWeight.w300,
                              ),
                              child: Text(
                                "Contact me >",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 100 * 15,
            left: MediaQuery.of(context).size.width / 100 * 54,
            child: Container(
              height: MediaQuery.of(context).size.height / 100 * 75,
              width: MediaQuery.of(context).size.width / 100 * 45,
              child: Image.asset(
                'images/pc.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
