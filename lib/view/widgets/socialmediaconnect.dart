import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techorrawebsite/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaConnect extends StatefulWidget {
  @override
  _SocialMediaConnectState createState() => _SocialMediaConnectState();
}

class _SocialMediaConnectState extends State<SocialMediaConnect> {
  void onClickFb() async {
    const url = 'https://www.facebook.com/profile.php?id=100002656706294';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

  void onClickinsta() async {
    const url = 'https://instagram.com/abdul.samad110?igshid=YmMyMTA2M2Y=';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

  void onClicktwitter() async {
    const url = 'https://twitter.com/?lang=en';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

  void onClickLinkedin() async {
    const url = 'www.linkedin.com/in/abdul-samad-979443215';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

  void onClickGitHub() async {
    const url = 'https://github.com/abdulsamad110';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

  void onClickSkype() async {
    const url = 'https://join.skype.com/invite/v9K6IpDuEl0d';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: (!Responsive.isDesktop(context)) ? 400 : 400,
        decoration: BoxDecoration(),
        child: Center(
          child: Row(
            children: [
              SizedBox(
                width: (!Responsive.isDesktop(context)) ? 5 : 30,
              ),
              Ink(
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  iconSize: (Responsive.isDesktop(context)) ? 45 : 30,
                  icon: SvgPicture.asset(
                    'assets/facebook.svg',
                  ),
                  onPressed: () {
                    onClickFb();
                  },
                ),
              ),
              Ink(
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  iconSize: (Responsive.isDesktop(context)) ? 45 : 30,
                  icon: SvgPicture.asset(
                    'assets/instagram.svg',
                  ),
                  onPressed: () {
                    onClickinsta();
                  },
                ),
              ),
              Ink(
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  iconSize: (Responsive.isDesktop(context)) ? 45 : 30,
                  icon: SvgPicture.asset(
                    'assets/twitter.svg',
                  ),
                  onPressed: () {
                    onClicktwitter();
                  },
                ),
              ),
              Ink(
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  iconSize: (Responsive.isDesktop(context)) ? 45 : 30,
                  icon: SvgPicture.asset(
                    'assets/linkedin.svg',
                  ),
                  onPressed: () {
                    onClickLinkedin();
                  },
                ),
              ),
              Ink(
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  iconSize: (Responsive.isDesktop(context)) ? 45 : 35,
                  icon: SvgPicture.asset(
                    'assets/github.svg',
                  ),
                  onPressed: () {
                    onClickGitHub();
                  },
                ),
              ),
              Ink(
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  iconSize: (Responsive.isDesktop(context)) ? 45 : 35,
                  icon: SvgPicture.asset(
                    'assets/skype.svg',
                  ),
                  onPressed: () {
                    onClickSkype();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
