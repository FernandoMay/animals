import 'package:animals/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Header(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Buy ',
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Cruelty Free',
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w800,
                                    color: primaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Makeup Products',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            'Online Today',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Help us in making this world a better place for animals.',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              MainButton(
                                title: 'GET STARTED',
                                tapEvent: () {},
                                color: primaryColor,
                              ),
                              SizedBox(width: 10),
                              MainButton(
                                title: 'WATCH VIDEO',
                                tapEvent: () {},
                                color: secondaryColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: Image.asset('lib/assets/animal.png'))
                ],
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              'All Rights Reserved',
              style: TextStyle(fontSize: 10),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                SocialItem(
                  title: 'Twitter',
                  tapEvent: () {},
                ),
                SocialItem(
                  title: 'Facebook',
                  tapEvent: () {},
                ),
                SocialItem(
                  title: 'Linkedin',
                  tapEvent: () {},
                ),
                SocialItem(
                  title: 'Instagram',
                  tapEvent: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SocialItem extends StatelessWidget {
  const SocialItem({
    Key key,
    @required this.tapEvent,
    @required this.title,
  }) : super(key: key);

  final String title;
  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      hoverColor: secondaryColor.withOpacity(0.2),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 6,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: primaryColor,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}

class MainButton extends StatelessWidget {
  const MainButton({
    Key key,
    @required this.tapEvent,
    @required this.title,
    @required this.color,
  }) : super(key: key);

  final String title;
  final GestureTapCallback tapEvent;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 35, vertical: 15),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    Key key,
    @required this.title,
    @required this.tapEvent,
  }) : super(key: key);

  final String title;
  final GestureTapCallback tapEvent;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: primaryColor.withOpacity(0.3),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: [
          Image.asset(
            'lib/assets/conejo.png',
            width: 50,
          ),
          SizedBox(width: 10),
          Text(
            'Peta Beauty',
            style: GoogleFonts.reenieBeanie(
              fontSize: 18,
            ),
          ),
          Spacer(),
          NavItem(
            title: 'Home',
            tapEvent: () {},
          ),
          NavItem(
            title: 'Donate',
            tapEvent: () {},
          ),
          NavItem(
            title: 'Contact Us',
            tapEvent: () {},
          ),
          NavItem(
            title: 'Login',
            tapEvent: () {},
          ),
          NavItem(
            title: 'Shop',
            tapEvent: () {},
          ),
        ],
      ),
    );
  }
}
