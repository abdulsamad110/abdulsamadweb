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
    const url = 'https://www.facebook.com/techorra';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }
  void onClickinsta() async {
    const url = 'https://www.facebook.com/techorra';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }
  void onClicktwitter() async {
    const url = 'https://www.facebook.com/techorra';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }
  void onClicklinkedin() async {
    const url = 'https://www.facebook.com/techorra';
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
        height: 90,
        width: (!Responsive.isDesktop(context))? 240 : 320,
        decoration: BoxDecoration(
        ),
        child: Center(
          child: Row(
            children: [
              SizedBox(width: (!Responsive.isDesktop(context))? 5 : 30,),
              Ink(
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                ),
                child: IconButton(iconSize: (Responsive.isDesktop(context))? 45 : 30,
                  icon: SvgPicture.asset('assets/facebook.svg',),
                  onPressed: () {
                  onClickFb();
                  },
                ),
              ),
              Ink(
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                ),
                child: IconButton(iconSize: (Responsive.isDesktop(context))? 45 : 30,
                  icon: SvgPicture.asset('assets/instagram.svg',),
                  onPressed: () {
                  onClickinsta();
                  },
                ),
              ),
              Ink(
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                ),
                child: IconButton(iconSize: (Responsive.isDesktop(context))? 45 : 30,
                  icon: SvgPicture.asset('assets/twitter.svg',),
                  onPressed: () {
                  onClicktwitter();
                  },
                ),
              ),
              Ink(
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                ),
                child: IconButton(iconSize: (Responsive.isDesktop(context))? 45 : 30,
                  icon: SvgPicture.asset('assets/linkedin.svg',),
                  onPressed: () {
                  onClicklinkedin();
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
