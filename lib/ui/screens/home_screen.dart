import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wd_website/ui/responsive/responsive.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool startAnimation = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        startAnimation = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (!Responsive.isMobile(context)) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 500,
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            'Hello',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              height: 0.7,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 500,
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            "I'm William Davies",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 500,
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            "Professional Web developer, iOS developer, and Android developer,\nall via Flutter",
                            style: TextStyle(
                              color: Colors.white60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/about');
                        },
                        padding: EdgeInsets.symmetric(
                          horizontal: 50.0,
                          vertical: 25.0,
                        ),
                        color: Colors.white,
                        child: Text(
                          'LEARN MORE',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          AnimatedContainer(
                            duration: Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width: 2.0,
                            height: startAnimation ? 150.0 : 0.0,
                            color: Colors.white,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: SizedBox(
                              width: 350,
                              child: Image.asset(
                                'web/assets/images/image_of_me.png',
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                          AnimatedContainer(
                            duration: Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width: 2.0,
                            height: startAnimation ? 150.0 : 0.0,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      AnimatedContainer(
                        duration: Duration(seconds: 1),
                        curve: Curves.fastLinearToSlowEaseIn,
                        width: startAnimation ? 350.0 : 0.0,
                        height: 2.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            );
          } else {
            return Column(
              children: [
                Flexible(
                  child: Container(
                    color: Colors.white,
                    child: Center(
                      child: Container(
                        width: 175,
                        color: Colors.black,
                        child: Image.asset(
                          'assets/images/image_of_me.png',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 250,
                          child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              'Hello',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                height: 0.7,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.0,
                        ),
                        SizedBox(
                          width: 300,
                          child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              "I'm William Davies",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        SizedBox(
                          width: 300,
                          child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              "Professional Web developer, iOS developer,\nand Android developer, all via Flutter",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white60,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25.0,
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
                            'LEARN MORE',
                            style: TextStyle(
                              // fontSize: 12.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
