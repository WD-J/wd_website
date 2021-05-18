import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wd_website/ui/components/project_widget_list.dart';

class WorkScreen extends StatefulWidget {
  const WorkScreen({Key key}) : super(key: key);

  @override
  _WorkScreenState createState() => _WorkScreenState();
}

class _WorkScreenState extends State<WorkScreen> {
  final ScrollController _controller = ScrollController();
  bool clickDelay = false;

  bool materialButtonHover = false;

  int currentWorkProjectPosition = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Listener(
        onPointerSignal: (PointerSignalEvent event) {
          if (event is PointerScrollEvent) {
            if (clickDelay == true) {
              return;
            } else {
              clickDelay = true;
              Future.delayed(const Duration(milliseconds: 750), () {
                clickDelay = false;
              });

              if (event.scrollDelta.dy.isNegative) {
                // Scrolled up
                setState(() {
                  // Could use null here, but gives "unnecessary statement error"
                  currentWorkProjectPosition == 0
                      ? currentWorkProjectPosition = 0
                      : currentWorkProjectPosition--;
                  _controller.animateTo(
                      _controller.position.extentBefore -
                          MediaQuery.of(context).size.height,
                      duration: Duration(milliseconds: 750),
                      curve: Curves.fastLinearToSlowEaseIn);
                });
              } else {
                // Scrolled down
                setState(() {
                  // Could use null here, but gives "unnecessary statement error"
                  currentWorkProjectPosition == 7
                      ? currentWorkProjectPosition = 7
                      : currentWorkProjectPosition++;
                  _controller.animateTo(
                      _controller.position.extentBefore +
                          MediaQuery.of(context).size.height,
                      duration: Duration(milliseconds: 750),
                      curve: Curves.fastLinearToSlowEaseIn);
                });
              }
            }
          }
        },
        child: GestureDetector(
          onVerticalDragEnd: (drag) {
            if (clickDelay == true) {
              return;
            } else {
              clickDelay = true;
              Future.delayed(const Duration(milliseconds: 750), () {
                clickDelay = false;
              });

              if (!drag.primaryVelocity.isNegative) {
                // Scrolled up
                setState(() {
                  // Could use null here, but gives "unnecessary statement error"
                  currentWorkProjectPosition == 0
                      ? currentWorkProjectPosition = 0
                      : currentWorkProjectPosition--;
                  _controller.animateTo(
                      _controller.position.extentBefore -
                          MediaQuery.of(context).size.height,
                      duration: Duration(milliseconds: 750),
                      curve: Curves.fastLinearToSlowEaseIn);
                });
              } else {
                // Scrolled down
                setState(() {
                  // Could use null here, but gives "unnecessary statement error"
                  currentWorkProjectPosition == 7
                      ? currentWorkProjectPosition = 7
                      : currentWorkProjectPosition++;
                  _controller.animateTo(
                      _controller.position.extentBefore +
                          MediaQuery.of(context).size.height,
                      duration: Duration(milliseconds: 750),
                      curve: Curves.fastLinearToSlowEaseIn);
                });
              }
            }
          },
          child: SingleChildScrollView(
            controller: _controller,
            physics: NeverScrollableScrollPhysics(),
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Container(
                  color: Colors.black,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Stack(
                    children: [
                      Positioned(
                        top: MediaQuery.of(context).size.height / 100 * 15,
                        left: MediaQuery.of(context).size.width / 100 * 50,
                        child: Container(
                          height: MediaQuery.of(context).size.height / 100 * 75,
                          width: MediaQuery.of(context).size.width / 100 * 45,
                          child: FlutterLogo(),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height / 100 * 16,
                        left: MediaQuery.of(context).size.width / 100 * 2.6,
                        child: Container(
                          height:
                              MediaQuery.of(context).size.height / 100 * 10.5,
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
                                "My work",
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height / 100 * 28.5,
                        left: MediaQuery.of(context).size.width / 100 * 2.75,
                        child: Container(
                          height: MediaQuery.of(context).size.height / 100 * 3,
                          color: Colors.black,
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: AnimatedDefaultTextStyle(
                              duration: Duration(seconds: 0),
                              curve: Curves.fastLinearToSlowEaseIn,
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontWeight: FontWeight.w100,
                              ),
                              child: Text(
                                // "The goal with presenting these projects is to accurately\nhighlight my competence as a Flutter developer.",
                                "Accurately highlighting my competence as a Flutter developer.",
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height / 100 * 33.5,
                        left: MediaQuery.of(context).size.width / 100 * 2.75,
                        child: Container(
                          height:
                              MediaQuery.of(context).size.height / 100 * 5.5,
                          color: Colors.black,
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: AnimatedDefaultTextStyle(
                              duration: Duration(seconds: 0),
                              curve: Curves.fastLinearToSlowEaseIn,
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontWeight: FontWeight.w100,
                              ),
                              child: Text(
                                "There is a total of 11 Applications on display,\nand at the very bottom is a page with a certificate for a course I took.",
                                // "Accurately highlighting my competence as a Flutter developer.",
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height / 100 * 45,
                        left: MediaQuery.of(context).size.width / 100 * 2.75,
                        child: Container(
                          height:
                              MediaQuery.of(context).size.height / 100 * 3.5,
                          color: Colors.black,
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: AnimatedDefaultTextStyle(
                              duration: Duration(seconds: 0),
                              curve: Curves.fastLinearToSlowEaseIn,
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontWeight: FontWeight.w100,
                              ),
                              child: Text(
                                "Scroll down to continue.\nNote: clicking 'WORK' will take you to the top of the page.",
                                // "Accurately highlighting my competence as a Flutter developer.",
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height / 100 * 55,
                        left: MediaQuery.of(context).size.width / 100 * 2.5,
                        child: Container(
                          height: MediaQuery.of(context).size.height / 100 * 10,
                          color: Colors.black,
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  clickDelay = true;
                                  Future.delayed(
                                      const Duration(milliseconds: 750), () {
                                    clickDelay = false;
                                  });

                                  currentWorkProjectPosition = 1;
                                  _controller.animateTo(
                                      _controller.position.extentBefore +
                                          MediaQuery.of(context).size.height,
                                      duration: Duration(milliseconds: 750),
                                      curve: Curves.fastLinearToSlowEaseIn);
                                });
                              },
                              onHover: (h) {
                                setState(() {
                                  materialButtonHover = !materialButtonHover;
                                });
                              },
                              focusColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              child: AnimatedOpacity(
                                duration: Duration(seconds: 1),
                                curve: Curves.fastLinearToSlowEaseIn,
                                opacity: materialButtonHover ? 1 : 0.5,
                                child: Icon(
                                  Icons.arrow_drop_down_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return projectWidgetList[index];
                  },
                ),
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Stack(
                    children: [
                      Positioned(
                        top: MediaQuery.of(context).size.height / 100 * 15,
                        left: MediaQuery.of(context).size.width / 100 * 54,
                        child: Container(
                          height: MediaQuery.of(context).size.height / 100 * 75,
                          width: MediaQuery.of(context).size.width / 100 * 45,
                          child: Image.asset(
                            'images/astroblurImageButNotReallyBecauseItsGonnaBeABackground.png',
                            // ALSO ADD UUH THOSE LINES AROUND PICTURE AND FIX THE LINES BENEATH THE CERTIFICATE IMAGE
                            // TODO: The JJBA Soundboard application was an SEO focused project, with great success, built in Java.
                            //
                            // The application garnered more than
                            // 2,540,000 impressions
                            // and
                            // 191,000 users
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Row(
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
                                      top: MediaQuery.of(context).size.height /
                                          100 *
                                          7.5,
                                      left: MediaQuery.of(context).size.width /
                                          100 *
                                          1.5,
                                    ),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              100 *
                                              6.5,
                                      child: FittedBox(
                                        fit: BoxFit.fitHeight,
                                        child: AnimatedDefaultTextStyle(
                                          duration: Duration(seconds: 0),
                                          curve: Curves.fastLinearToSlowEaseIn,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          child: Text(
                                            'JJBA Soundboard',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              100 *
                                              1,
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              100 *
                                              1.65,
                                        ),
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              100 *
                                              25,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              100 *
                                              35,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: AnimatedDefaultTextStyle(
                                                  duration:
                                                      Duration(seconds: 0),
                                                  curve: Curves
                                                      .fastLinearToSlowEaseIn,
                                                  style: TextStyle(
                                                    color: Colors.black
                                                        .withOpacity(0.8),
                                                    fontWeight: FontWeight.w100,
                                                    fontSize: 20.0,
                                                  ),
                                                  child: Text(
                                                    'The JJBA Soundboard application was a Java / SEO focused project, with great success.',
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
                                  bottom: MediaQuery.of(context).size.height /
                                      100 *
                                      5,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width /
                                                100 *
                                                1.65,
                                      ),
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                100 *
                                                2,
                                        child: FittedBox(
                                          fit: BoxFit.fitHeight,
                                          child: AnimatedDefaultTextStyle(
                                            duration: Duration(seconds: 0),
                                            curve:
                                                Curves.fastLinearToSlowEaseIn,
                                            style: TextStyle(
                                              color: Colors.black,
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
                                        left:
                                            MediaQuery.of(context).size.width /
                                                100 *
                                                1.65,
                                      ),
                                      child: InkWell(
                                        onTap: () async {
                                          await launch(
                                              'https://github.com/WD-J/JJBA_soundboard');
                                        },
                                        focusColor: Colors.transparent,
                                        splashColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              100 *
                                              2,
                                          child: FittedBox(
                                            fit: BoxFit.fitHeight,
                                            child: AnimatedDefaultTextStyle(
                                              duration: Duration(seconds: 0),
                                              curve:
                                                  Curves.fastLinearToSlowEaseIn,
                                              style: TextStyle(
                                                color: Colors.black
                                                    .withOpacity(0.8),
                                                fontWeight: FontWeight.w100,
                                              ),
                                              child: Text(
                                                'github.com/WD-J/JJBA_soundboard',
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
                        ],
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return projectWidgetList[8 + index];
                  },
                ),
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Stack(
                    children: [
                      AnimatedPositioned(
                        duration: Duration(seconds: 1),
                        curve: Curves.fastOutSlowIn,
                        top: currentWorkProjectPosition == 7
                            ? MediaQuery.of(context).size.height / 100 * 15
                            : MediaQuery.of(context).size.height / 100 * 17.5,
                        left: MediaQuery.of(context).size.width / 100 * 45,
                        child: Container(
                          height: MediaQuery.of(context).size.height / 100 * 75,
                          width: MediaQuery.of(context).size.width / 100 * 45,
                          child: Image.asset(
                            'images/certificate.jpg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      AnimatedPadding(
                        duration: Duration(seconds: 1),
                        curve: Curves.fastOutSlowIn,
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 100 * 87.5,
                          left: currentWorkProjectPosition == 7
                              ? MediaQuery.of(context).size.width / 100 * 45
                              : MediaQuery.of(context).size.width / 100 * 67.5,
                        ),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          curve: Curves.fastOutSlowIn,
                          padding: EdgeInsets.only(
                            top:
                                MediaQuery.of(context).size.height / 100 * 87.5,
                            left: currentWorkProjectPosition == 7
                                ? MediaQuery.of(context).size.width / 100 * 45
                                : MediaQuery.of(context).size.width /
                                    100 *
                                    67.5,
                          ),
                          height: currentWorkProjectPosition == 7
                              ? MediaQuery.of(context).size.height / 100 * 0.25
                              : 0,
                          width: currentWorkProjectPosition == 7
                              ? MediaQuery.of(context).size.width / 100 * 45
                              : 0,
                          color: Colors.black.withOpacity(0.75),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height /
                                  100 *
                                  7.5,
                              left:
                                  MediaQuery.of(context).size.width / 100 * 1.5,
                            ),
                            child: Container(
                              height: MediaQuery.of(context).size.height /
                                  100 *
                                  6.5,
                              child: FittedBox(
                                fit: BoxFit.fitHeight,
                                child: AnimatedDefaultTextStyle(
                                  duration: Duration(seconds: 0),
                                  curve: Curves.fastLinearToSlowEaseIn,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  child: Text(
                                    'Certificate',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height /
                                      100 *
                                      1,
                                  left: MediaQuery.of(context).size.width /
                                      100 *
                                      1.65,
                                ),
                                child: Container(
                                  height: MediaQuery.of(context).size.height /
                                      100 *
                                      25,
                                  width: MediaQuery.of(context).size.width /
                                      100 *
                                      35,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: AnimatedDefaultTextStyle(
                                          duration: Duration(seconds: 0),
                                          curve: Curves.fastLinearToSlowEaseIn,
                                          style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.8),
                                            fontWeight: FontWeight.w100,
                                            fontSize: 20.0,
                                          ),
                                          child: Text(
                                            'This is a certificate for a Flutter development Course, made by Google.',
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
