import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertripui/fade_animation.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Nunito'),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  with SingleTickerProviderStateMixin{
  PageController _controller = PageController(
    initialPage: 0,
  )..addListener(_onScroll);
  int totalPage = 3;

  static _onScroll() {
    print('sssss');
  }

  @override
  void setState(fn) {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          makePage(
              page: 1,
              image: 'assets/images/one.jpg',
              title: 'Wear Face Mask',
              description: 'Wear a face covering on public transport.'),
          makePage(
              page: 2,
              image: 'assets/images/two.jpg',
              title: 'Thank You #OurHeroes',
              description:
                  'Super thanks to all our front-line health workers. You\'re our super heroes.'),
          makePage(
              page: 3,
              image: 'assets/images/three.jpg',
              title: 'Keep Social Distance',
              description:
                  'Maintain social distancing at least 6ft distance from each other'),
        ],
      ),
    );
  }

  Widget makePage({image, title, description, page}) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
          0.3,
          0.9
        ], colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.2)
        ])),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    FadeAnimation(
                      2, Text(
                      '${page}',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )),
                    Text(
                      '/${totalPage}',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeAnimation(
                      2,
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(
                      1.5, Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ),
                        Text(
                          '4.0',
                          style: TextStyle(color: Colors.white70),
                        )
                      ],
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(
                      2,Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Text(
                        description,
                        style: TextStyle(
                            color: Colors.white.withOpacity(.7),
                            height: 1.8,
                            fontSize: 15),
                      ),
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(
                      2.5, Text(
                      'READ MORE',
                      style: TextStyle(color: Colors.white),
                    )),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ))
              ]),
        ),
      ),
    );
  }
}
