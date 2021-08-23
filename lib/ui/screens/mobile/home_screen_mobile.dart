import 'package:flutter/material.dart';

class HomeScreenMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 40,
          child: Container(
            color: Colors.white,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  color: Colors.black,
                  child: Image.asset(
                    'web/assets/images/image_of_me.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 60,
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
                height: 10.0,
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
      ],
    );
  }
}
