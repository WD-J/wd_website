import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({
    required this.projectNumber,
    required this.gradientOne,
    required this.gradientTwo,
    required this.projectTextColor,
    required this.projectTitle,
    required this.projectDescription,
    required this.projectImage,
    required this.projectLink,
  });

  final int projectNumber;
  final Color gradientOne;
  final Color gradientTwo;
  final Color projectTextColor;
  final String projectTitle;
  final String projectDescription;
  final String projectImage;
  final String projectLink;

  _openUrl(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2,
      decoration: BoxDecoration(
        gradient: projectNumber == 3
            ? LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
                  Colors.purple.withOpacity(0.75),
                  Colors.blue.withOpacity(0.75),
                  Colors.teal.withOpacity(0.75),
                  Colors.green.withOpacity(0.75),
                  Colors.yellow.withOpacity(0.75),
                  Colors.orange.withOpacity(0.75),
                  Colors.red.withOpacity(0.75)
                ],
                transform: GradientRotation(-200),
                stops: [0.05, 0.15, 0.2, 0.25, 0.3, 0.35, 0.45],
              )
            : LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [gradientOne, gradientTwo],
                transform: GradientRotation(-200),
                stops: [projectNumber == 1 ? 0.2 : 0.4, 0.0],
              ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 100 * 7.5,
                      left: MediaQuery.of(context).size.width / 100 * 1.5,
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 100 * 6.5,
                      child: FittedBox(
                        fit: BoxFit.fitHeight,
                        child: AnimatedDefaultTextStyle(
                          duration: Duration(seconds: 0),
                          curve: Curves.fastLinearToSlowEaseIn,
                          style: TextStyle(
                            color: projectTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                          child: Text(
                            projectTitle,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 100 * 1,
                          left: MediaQuery.of(context).size.width / 100 * 1.65,
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 100 * 25,
                          width: MediaQuery.of(context).size.width / 100 * 35,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                child: AnimatedDefaultTextStyle(
                                  duration: Duration(seconds: 0),
                                  curve: Curves.fastLinearToSlowEaseIn,
                                  style: TextStyle(
                                    color: projectTextColor.withOpacity(0.8),
                                    fontWeight: FontWeight.w100,
                                    fontSize: 20.0,
                                  ),
                                  child: Text(
                                    projectDescription,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height / 100 * 5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 100 * 1.65,
                      ),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 100 * 2,
                        child: FittedBox(
                          fit: BoxFit.fitHeight,
                          child: AnimatedDefaultTextStyle(
                            duration: Duration(seconds: 0),
                            curve: Curves.fastLinearToSlowEaseIn,
                            style: TextStyle(
                              color: projectTextColor,
                              fontWeight: FontWeight.bold,
                            ),
                            child: Text(
                              'Check out the complete project:',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 100 * 1.65,
                      ),
                      child: InkWell(
                        onTap: () {
                          _openUrl('https://$projectLink');
                        },
                        focusColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        child: Container(
                          height: MediaQuery.of(context).size.height / 100 * 2,
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: AnimatedDefaultTextStyle(
                              duration: Duration(seconds: 0),
                              curve: Curves.fastLinearToSlowEaseIn,
                              style: TextStyle(
                                color: projectTextColor.withOpacity(0.8),
                                fontWeight: FontWeight.w100,
                              ),
                              child: Text(
                                projectLink,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width / 100 * 12.5,
              top: MediaQuery.of(context).size.height / 100 * 2,
              bottom: MediaQuery.of(context).size.height / 100 * 2,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'app_images/$projectImage.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
