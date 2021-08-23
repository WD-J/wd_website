import 'package:flutter/material.dart';
import 'package:wd_website/ui/widgets/animated/skill_text_animation_widget.dart';
import 'package:wd_website/ui/widgets/animated/text_animation_widget.dart';

class TestHomeScreenDesktop extends StatefulWidget {
  const TestHomeScreenDesktop({Key? key}) : super(key: key);

  @override
  _TestHomeScreenDesktopState createState() => _TestHomeScreenDesktopState();
}

class _TestHomeScreenDesktopState extends State<TestHomeScreenDesktop>
    with TickerProviderStateMixin {
  late AnimationController _textAnimationController;
  late AnimationController _skillTextAnimationController;
  late TextAnimationWidget textAnimationWidget;
  late SkillTextAnimationWidget skillTextAnimationWidget;
  bool hasInitialized = false;
  bool isAnimatingSkills = false;

  void setText(String text) {
    setState(() {
      textAnimationWidget = TextAnimationWidget(
        controller: _textAnimationController,
        text: text,
      );
    });
  }

  Future<void> animateText() async {
    await _textAnimationController.forward().whenComplete(() {
      _textAnimationController.reset();
    });
  }

  Future<dynamic> startAnimation() async {
    setText('Hello');
    setState(() => hasInitialized = true);
    await animateText();
    setText("I'm William Davies");
    await animateText();
    setText('Web');
    isAnimatingSkills = true;
    await _skillTextAnimationController.animateTo(1);
    await animateText();
    setText('iOS');
    await animateText();
    setText('Android');
    await animateText();
    setText('All via Flutter');
    await animateText();
  }

  @override
  void initState() {
    _textAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _skillTextAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    Future.delayed(Duration(seconds: 1), () {
      startAnimation();
    });
    super.initState();
  }

  @override
  void dispose() {
    _textAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: !hasInitialized
          ? SizedBox()
          : isAnimatingSkills
              ? SkillTextAnimationWidget(
                  controller: _skillTextAnimationController,
                  textAnimationWidget: textAnimationWidget,
                )
              : textAnimationWidget,
    );
  }
}
