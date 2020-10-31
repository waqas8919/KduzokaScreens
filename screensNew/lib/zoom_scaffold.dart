import 'package:screensNew/ForgotPassword/ResetPassword.dart';
import 'package:screensNew/editstore.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:provider/provider.dart';

class ZoomScaffold extends StatefulWidget {
  final Widget menuScreen;
  final Layout contentScreen;

  ZoomScaffold({
    this.menuScreen,
    this.contentScreen,
  });

  @override
  _ZoomScaffoldState createState() => new _ZoomScaffoldState();
}

class _ZoomScaffoldState extends State<ZoomScaffold>
    with TickerProviderStateMixin {
  static const color1 = const Color(0xff25AAE1);
  static const color2 = const Color(0xff596CBA);

  Curve scaleDownCurve = new Interval(0.0, 0.3, curve: Curves.easeOut);
  Curve scaleUpCurve = new Interval(0.0, 1.0, curve: Curves.easeOut);
  Curve slideOutCurve = new Interval(0.0, 1.0, curve: Curves.easeOut);
  Curve slideInCurve = new Interval(0.0, 1.0, curve: Curves.easeOut);

  createContentDisplay() {
    return zoomAndSlideContent(new Container(
      child: new Scaffold(
        backgroundColor: Colors.white,
        appBar: GradientAppBar(
          title: Text('My Profile'),
          centerTitle: true,
          backgroundColorStart: color2,
          backgroundColorEnd: color1,
          leading: GestureDetector(
            onTap: () {
              Provider.of<MenuController>(context, listen: true).toggle();
            },
            child: new Image.asset(
              'assets/menu.png',
              width: 50.0,
              height: 50.0,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            ),
            child: Column(
              children: [
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 25.0, bottom: 20.0),
                          child: new CircleAvatar(
                            radius: 75,
                            backgroundColor: Colors.transparent,
                            child: CircleAvatar(
                              radius: 100,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: new Image.asset(
                                      'assets/camera.png',
                                      width: 50.0,
                                      height: 50.0,
                                    ),
                                  )
                                ],
                              ),
                              backgroundImage:
                                  AssetImage('assets/profile.jpeg'),
                            ),
                          ),
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                        labelStyle:
                            TextStyle(fontSize: 17, color: Colors.black),
                        hintText: 'Jacob Gibson',
                        labelText: 'Jacob Gibson',
                        alignLabelWithHint: true,
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                        labelStyle:
                            TextStyle(fontSize: 17, color: Colors.black),
                        hintText: 'Jacob@gmail.com',
                        labelText: 'Jacob@gmail.com',
                        alignLabelWithHint: true,
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                        labelStyle:
                            TextStyle(fontSize: 17, color: Colors.black),
                        hintText: '0900-78601',
                        labelText: '0900-78601',
                        alignLabelWithHint: true,
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                        labelStyle:
                            TextStyle(fontSize: 17, color: Colors.black),
                        hintText: 'London',
                        labelText: 'London',
                        alignLabelWithHint: true,
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResetPassword()));
                        },
                        child: Text(
                          'Change Password',
                          style: TextStyle(
                            fontSize: 21,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => EditStore()));
              },
              child: Text(
                "Update",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
        ),
      ),
    ));
  }

  zoomAndSlideContent(Widget content) {
    var slidePercent, scalePercent;

    switch (Provider.of<MenuController>(context, listen: true).state) {
      case MenuState.closed:
        slidePercent = 0.0;
        scalePercent = 0.0;
        break;
      case MenuState.open:
        slidePercent = 1.0;
        scalePercent = 1.0;
        break;
      case MenuState.opening:
        slidePercent = slideOutCurve.transform(
            Provider.of<MenuController>(context, listen: true).percentOpen);
        scalePercent = scaleDownCurve.transform(
            Provider.of<MenuController>(context, listen: true).percentOpen);
        break;
      case MenuState.closing:
        slidePercent = slideInCurve.transform(
            Provider.of<MenuController>(context, listen: true).percentOpen);
        scalePercent = scaleUpCurve.transform(
            Provider.of<MenuController>(context, listen: true).percentOpen);
        break;
    }

    final slideAmount = 275.0 * slidePercent;
    final contentScale = 1.0 - (0.2 * scalePercent);
    final cornerRadius =
        16.0 * Provider.of<MenuController>(context, listen: true).percentOpen;

    return new Transform(
      transform: new Matrix4.translationValues(slideAmount, 0.0, 0.0)
        ..scale(contentScale, contentScale),
      alignment: Alignment.centerLeft,
      child: new Container(
        decoration: new BoxDecoration(
          boxShadow: [
            new BoxShadow(
              color: Colors.black12,
              offset: const Offset(0.0, 5.0),
              blurRadius: 15.0,
              spreadRadius: 10.0,
            ),
          ],
        ),
        child: new ClipRRect(
            borderRadius: new BorderRadius.circular(cornerRadius),
            child: content),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Scaffold(
            body: widget.menuScreen,
          ),
        ),
        createContentDisplay()
      ],
    );
  }
}

class ZoomScaffoldMenuController extends StatefulWidget {
  final ZoomScaffoldBuilder builder;

  ZoomScaffoldMenuController({
    this.builder,
  });

  @override
  ZoomScaffoldMenuControllerState createState() {
    return new ZoomScaffoldMenuControllerState();
  }
}

class ZoomScaffoldMenuControllerState
    extends State<ZoomScaffoldMenuController> {
  @override
  Widget build(BuildContext context) {
    return widget.builder(
        context, Provider.of<MenuController>(context, listen: true));
  }
}

typedef Widget ZoomScaffoldBuilder(
    BuildContext context, MenuController menuController);

class Layout {
  final WidgetBuilder contentBuilder;

  Layout({
    this.contentBuilder,
  });
}

class MenuController extends ChangeNotifier {
  final TickerProvider vsync;
  final AnimationController _animationController;
  MenuState state = MenuState.closed;

  MenuController({
    this.vsync,
  }) : _animationController = new AnimationController(vsync: vsync) {
    _animationController
      ..duration = const Duration(milliseconds: 250)
      ..addListener(() {
        notifyListeners();
      })
      ..addStatusListener((AnimationStatus status) {
        switch (status) {
          case AnimationStatus.forward:
            state = MenuState.opening;
            break;
          case AnimationStatus.reverse:
            state = MenuState.closing;
            break;
          case AnimationStatus.completed:
            state = MenuState.open;
            break;
          case AnimationStatus.dismissed:
            state = MenuState.closed;
            break;
        }
        notifyListeners();
      });
  }

  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  get percentOpen {
    return _animationController.value;
  }

  open() {
    _animationController.forward();
  }

  close() {
    _animationController.reverse();
  }

  toggle() {
    if (state == MenuState.open) {
      close();
    } else if (state == MenuState.closed) {
      open();
    }
  }
}

enum MenuState {
  closed,
  opening,
  open,
  closing,
}
