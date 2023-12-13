import 'package:app/shared/theme_color.dart';
import 'package:app/web/widgets/navbar_logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'AI/AI_view.dart';
import 'Location/Location_view.dart';
import 'home/home_view.dart';
import 'About/about_view.dart';

class Layout extends StatefulWidget {
  const Layout({Key key}) : super(key: key);

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> with SingleTickerProviderStateMixin {
  PageController pageController = PageController();
  AnimationController controller;
  bool pageIsScrolling = false;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  void _onScroll(double offset) {
    if (pageIsScrolling == false) {
      pageIsScrolling = true;
      if (offset > 0) {
        pageController
            .nextPage(
                duration: Duration(milliseconds: 500), curve: Curves.easeInOut)
            .then((value) => pageIsScrolling = false);
      } else {
        pageController
            .previousPage(
                duration: Duration(milliseconds: 500), curve: Curves.easeInOut)
            .then((value) => pageIsScrolling = false);
      }
    }
  }

  route(int page) {
    controller.forward();
    pageController.animateToPage(page,
        duration: Duration(milliseconds: 500), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var isSmallScreen = MediaQuery.of(context).size.width < 800;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: isSmallScreen
          ? AppBar(
              backgroundColor: Color(0xff2B8778),
              elevation: 0,
              title: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: Image.asset('assets/icons/app_logo_dark.png'),
                    iconSize: 35,
                    onPressed: () => route(0),
                  );
                },
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: Container(
                child: Row(
                  children: [
                    NavBarLogo(),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          child: Text(
                            'Home',
                            style: TextStyle(fontSize: 18, color: primaryColor),
                          ),
                          onTap: () => route(0),
                        ),
                        SizedBox(width: 30.0),
                        InkWell(
                          child: Text(
                            'About',
                            style: TextStyle(fontSize: 18, color: primaryColor),
                          ),
                          onTap: () => route(1),
                        ),
                        SizedBox(width: 30.0),
                        InkWell(
                          child: Text(
                            'AI',
                            style: TextStyle(fontSize: 18, color: primaryColor),
                          ),
                          onTap: () => route(2),
                        ),
                        SizedBox(width: 30.0),
                        InkWell(
                          child: Text(
                            'Location',
                            style: TextStyle(fontSize: 18, color: primaryColor),
                          ),
                          onTap: () => route(3),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
      drawer: Container(
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 16),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              color: primaryColor,
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/icons/menu_logo.png'),
                    width: 100.0
                    ),
                ],
              ),
            ),
            InkWell(
              child: 
              Text(
                // recommend change to flat button
                '   Home',
                style: TextStyle(fontSize: 18, color: primaryColor, height: 3.0,fontWeight: FontWeight.w800,),
              ),
              onTap: () => route(0),
            ),
            SizedBox(width: 30.0),
            InkWell(
              child: Text(
                '   About',
                style: TextStyle(fontSize: 18, color: primaryColor,height: 3.0,fontWeight: FontWeight.w800,),
              ),
              onTap: () => route(1),
            ),
            SizedBox(width: 30.0),
            InkWell(
              child: Text(
                '   AI',
                style: TextStyle(fontSize: 18, color: primaryColor,height: 3.0,fontWeight: FontWeight.w800,),
              ),
              onTap: () => route(2),
            ),
            SizedBox(width: 30.0),
            InkWell(
              child: Text(
                '   Location',
                style: TextStyle(fontSize: 18, color: primaryColor,height: 3.0,fontWeight: FontWeight.w800,),
              ),
              onTap: () => route(3),
            ),
          ],
        ),
      ),
      body: Scaffold(
        body: GestureDetector(
          onPanUpdate: (details) {
            _onScroll(details.delta.dy * -1);
          },
          child: Listener(
            // to detect scroll
            onPointerSignal: (pointerSignal) {
              if (pointerSignal is PointerScrollEvent) {
                _onScroll(pointerSignal.scrollDelta.dy);
              }
            },
            child: PageView(
              scrollDirection: Axis.vertical,
              controller: pageController,
              physics: NeverScrollableScrollPhysics(),
              pageSnapping: true,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 70,vertical: 30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/home_background.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      HomeView(),
                    ],
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height,
                    padding: 
                        const EdgeInsets.symmetric(horizontal: 70, vertical: 30),
                    decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/About_background.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: IntroView(),),
                Container(
                    height: MediaQuery.of(context).size.height,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 70, vertical: 30),
                     decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/AI_background.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                    child: AboutView(),),
                Container(
                  height: MediaQuery.of(context).size.height,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 70, vertical: 30),
                   decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Location_background.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [DownloadView(),],
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
