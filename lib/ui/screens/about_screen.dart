import 'package:flutter/material.dart';
import 'package:wd_website/ui/responsive/responsive.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0, bottom: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 350,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    "About me",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: Responsive.isMobile(context) ? 10 : 2,
                    child: Column(
                      children: [
                        Text(
                          "Hello! My name is William Stratford Pound Davies. I was born and raised in Norway, and I am bilingual (English-Norwegian), as my family is English. I have education equivalent to an A-level in Media and Communication. I started programming at the age of 12, and quickly sought to learn more!",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white60,
                          ),
                        ),
                        SizedBox(
                          width: 350,
                          child: Image.asset(
                            'web/assets/images/pc.png',
                            fit: BoxFit.scaleDown,
                            // scale: 3,
                          ),
                        ),
                        Text(
                          "\nI therefore took courses and joined coding clubs, amongst them, a coding club run by students at the University of Oslo. I continued on consistently programming for years, and eventually took my skills into the business sector. I am genuinely motivated by solving problems, and creating solutions for businesses, and consumers.\n\nI have 4+ years of experience developing natively for Android. During that time, I worked with technologies such as Java, Firebase, REST-API's, general JSON, front and back-end XML. I also have 2+ years of experience within Flutter and Dart. My knowledge from developing natively translated well, and I quickly mastered the framework and language. Other notable technologies I am familiar with include: C#, Unity, Python, HTML 5, CSS, JavaScript, and Git.\n\nI'm always interested in new and exciting opportunities, so feel free to contact me via the contact page, or check out my work!",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white60,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                ],
              ),
              SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/about');
                    },
                    padding: EdgeInsets.symmetric(
                      horizontal: 25.0,
                      vertical: 20.0,
                    ),
                    color: Colors.white,
                    child: Text(
                      'MY WORK',
                      style: TextStyle(
                        // fontSize: 12.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/about');
                    },
                    padding: EdgeInsets.symmetric(
                      horizontal: 25.0,
                      vertical: 20.0,
                    ),
                    color: Colors.white,
                    child: Text(
                      'CONTACT ME',
                      style: TextStyle(
                        // fontSize: 12.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
