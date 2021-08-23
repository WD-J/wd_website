import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wd_website/ui/responsive/responsive.dart';
import 'package:wd_website/ui/widgets/contact_textfield.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  TextEditingController senderController = TextEditingController();
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
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (!Responsive.isMobile(context)) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 500,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          "Contact",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Get in touch! Mock up an email below, directly email ',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            _openEmail();
                          },
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ContactTextField(
                          controller: subjectController,
                        ),
                        ContactTextField(
                          controller: bodyController,
                          maxLines: 10,
                        ),
                        Expanded(
                          child: SizedBox(),
                        ),
                        MaterialButton(
                          onPressed: () {
                            // implement
                          },
                          focusColor: Colors.white,
                          textColor: Colors.white,
                          padding: EdgeInsets.only(
                            top: 25.0,
                            bottom: 25.0,
                            left: 50.0,
                            right: 50.0,
                          ),
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
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 350,
                  child: Image.asset(
                    'images/contact.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            );
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}
