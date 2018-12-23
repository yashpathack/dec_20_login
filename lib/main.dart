import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        accentColor: Colors.white,
        backgroundColor: Colors.white,
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 4000));
    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.decelerate,
    );
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image(
                alignment: Alignment.centerLeft,
                //repeat: ImageRepeat.repeat,
                height: 48.0,
                width: 48.0,
                image: AssetImage(
                  "images/as3.png",
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 5 * 10.0 + 5.0),
                alignment: Alignment.center,
                child: Text("This is my app!")),
            Container(
              child: IconButton(
                icon: Icon(Icons.add),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
          ],
          //color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        bottomOpacity: 0.5,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage(
              "images/as4.jpg",
            ),
            fit: BoxFit.cover,
            color: Colors.blue,
            colorBlendMode: BlendMode.color,
            alignment: AlignmentDirectional(-0.6, -0),
            filterQuality: FilterQuality.low,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 23.0),
              ),
              // FlutterLogo(
              //   colors: Colors.blue,
              //   curve: Curves.bounceOut,
              //   size: _iconAnimation.value * 140.0,
              // ),

              Image(
                alignment: AlignmentDirectional(10.0, 1.0),
                image: AssetImage("images/as3.png"),
                width: _iconAnimation.value * 220.0,
                height: _iconAnimation.value * 170.0,
              ),

              Form(
                child: Theme(
                  data: ThemeData(

                      //brightness: Brightness.light,
                      primarySwatch: Colors.blue,
                      textSelectionColor: Colors.black,
                      // scaffoldBackgroundColor: Colors.black,
                      unselectedWidgetColor: Colors.white,
                      // accentColor: Colors.white,
                      //primaryColor: Colors.blue,
                      cursorColor: Colors.blue,
                      // backgroundColor: Colors.white,
                      inputDecorationTheme: InputDecorationTheme()),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding:
                            EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
                        child: TextFormField(
                          // textCapitalization: TextCapitalization.characters,
                          scrollPadding: EdgeInsets.all(40.0),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10.0),
                            filled: true,
                            //errorText: "Wrong!",
                            hintText: "Email",
                            icon: Icon(
                              Icons.email,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.white54,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                gapPadding: 12.0,
                                borderSide: BorderSide(
                                    color: Colors.yellow,
                                    width: 4.0,
                                    style: BorderStyle.solid)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2.0,
                            )),
                            fillColor: Colors.black54,
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.only(left: 30.0, right: 30.0, top: 15.0),
                        child: TextFormField(
                          // textCapitalization: TextCapitalization.characters,
                          scrollPadding: EdgeInsets.all(40.0),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10.0),
                            filled: true,
                            //errorText: "Wrong!",
                            hintText: "Password",
                            disabledBorder:
                                OutlineInputBorder(gapPadding: 34.0),

                            icon: Icon(
                              Icons.lock,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.white54,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 4.0,
                                    style: BorderStyle.solid)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2.0,
                            )),
                            fillColor: Colors.black54,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          obscureText: true,
                        ),
                      ),
                      // Container(
                      //   padding: EdgeInsets.all(10.0),
                      //   child: FlatButton(
                      //     child: Text("Hello!"),
                      //     splashColor: Colors.teal,
                      //     clipBehavior: Clip.hardEdge,
                      //     textTheme: ButtonTextTheme.primary,
                      //     color: Colors.blue,
                      //     textColor: Colors.white,
                      //     onPressed: () {},
                      //     colorBrightness: Brightness.dark,
                      //   ),
                      // ),
                      Container(
                        //axi
                        padding: EdgeInsets.all(15.0),
                        child: RaisedButton(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              //shadows: Shadow()
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          textColor: Colors.white,

                          splashColor: Colors.white10,
                          //highlightColor: Colors.red,
                          onPressed: () {},
                          //shape: ,
                          colorBrightness: Brightness.light,
                          animationDuration: Duration(milliseconds: 300),
                          color: Colors.blue,
                          elevation: 12.0,
                          highlightElevation: 2.0,

                          padding: EdgeInsets.all(3.0),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                        ),
                      ),

                      // Container(
                      //   padding: EdgeInsets.only(top: 10.0),
                      //   child: OutlineButton(
                      //     onPressed: () {},
                      //     child: Text("I shall pass!"),

                      //     textColor: Colors.blue[700],
                      //     splashColor: Colors.white10,
                      //     color: Colors.yellowAccent,
                      //     highlightElevation: 6.0,

                      //     borderSide: BorderSide(
                      //         color: Colors.blue[700],
                      //         width: 6.0,
                      //         style: BorderStyle.solid),
                      //     //highlightColor: Colors.red,
                      //     //onPressed: () {},
                      //     //shape: ,
                      //     // colorBrightness: Brightness.light,
                      //     // animationDuration: Duration(milliseconds: 300),
                      //     // color: Colors.transparent,
                      //     // elevation: 12.0,

                      //     padding: EdgeInsets.all(10.0),

                      //     clipBehavior: Clip.antiAliasWithSaveLayer,
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
            ],
          ),
          //
          // )
          //
        ],
      ),
      //
    );
  }
}
