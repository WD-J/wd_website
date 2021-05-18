import 'package:flutter/material.dart';
import 'package:wd_website/constants/constants.dart';
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
                    flex: Responsive.isMobile(context) ? 15 : 2,
                    child: Column(
                      children: [
                        Text(
                          kAboutMeParagraphFirst,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white60,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: SizedBox(
                            width: 350,
                            child: Image.asset(
                              'web/assets/images/pc.png',
                              fit: BoxFit.scaleDown,
                              // scale: 3,
                            ),
                          ),
                        ),
                        Text(
                          kAboutMeParagraphLast,
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
                      Navigator.of(context).pushNamed('/work');
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
                      Navigator.of(context).pushNamed('/contact');
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
