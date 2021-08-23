import 'package:flutter/material.dart';

class HomeScreenDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Center(
        child: FittedBox(
          child: Row(
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
                        'Professional Web developer, iOS developer, and Android developer,\nall via Flutter',
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
                width: 50.0,
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
                        height: 150.0,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                        ),
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
                        height: 150.0,
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
                    width: 350.0,
                    height: 2.0,
                    color: Colors.white,
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
