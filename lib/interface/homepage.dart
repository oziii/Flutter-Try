import 'package:flutter/material.dart';
import 'package:korzi/interface/horziontal.dart';
import 'package:korzi/interface/vertical.dart';

  

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Korzi',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyApp createState() => new MyApp();
}

class MyApp extends State<MyHomePage> {
   final List<String> urls = [
     "https://scontent-vie1-1.cdninstagram.com/vp/a5e5c7908be1c73c146c773aa7d2947d/5C8C778F/t51.2885-15/e35/42178836_1953046281480165_2880497848028233728_n.jpg",
     "https://instagram.fada1-1.fna.fbcdn.net/vp/67ece3baa2ec17468548390d4b68747b/5C913C5F/t51.2885-15/e35/41471687_271125456866506_6006309761996902150_n.jpg",
     "https://scontent-vie1-1.cdninstagram.com/vp/c82415cd9ffbbb67e92380b1d6301f42/5C97B607/t51.2885-15/e35/30855652_628334330837562_4365248014822932480_n.jpg",
     "https://scontent-vie1-1.cdninstagram.com/vp/611c7ccbbfaacebecabcf422343952cb/5CA20550/t51.2885-15/e35/15253264_571192909738920_7849865435741683712_n.jpg",
     "https://scontent-vie1-1.cdninstagram.com/vp/f7292b31cba80eed16e05531aa8cf021/5C903E0B/t51.2885-15/sh0.08/e35/p750x750/44251908_288665465322121_3164354080426313448_n.jpg",
     "https://scontent-vie1-1.cdninstagram.com/vp/6d2b954de1ec19aa5e3f0da083b43d9e/5CAB5DE6/t51.2885-15/e35/43613375_284507852399197_2874323443060132366_n.jpg",
     "https://scontent-vie1-1.cdninstagram.com/vp/a80c31c5625242f27e30d1ce1d832178/5CAE050E/t51.2885-15/e35/45802679_259960261336119_22205269421126775_n.jpg",
  ];
  final List<String> urlsLogo = [
    "https://scontent-vie1-1.cdninstagram.com/vp/e95ab0d998cee4660e6db8b353cc339d/5CB25778/t51.2885-19/s150x150/28754132_217056689036536_833929103802368000_n.jpg",
    "https://scontent-vie1-1.cdninstagram.com/vp/886dcdb54f0c8dd05dd86892b3b183e8/5C9977D7/t51.2885-19/s150x150/20688594_1527699307288439_1363695461289951232_a.jpg",
    "https://scontent-vie1-1.cdninstagram.com/vp/4587f91a6dfcd46ea0e1fcfa49468a23/5C8C1876/t51.2885-19/s150x150/44322667_264213097612528_1082954026338746368_n.jpg",
    "https://scontent-vie1-1.cdninstagram.com/vp/d6f971fbd32327308448e401678bff2c/5C9A6087/t51.2885-19/s150x150/14701260_577578555784061_660851336341880832_a.jpg", 
    "https://scontent-vie1-1.cdninstagram.com/vp/c87bfc6f6d10aca6b062c4684d166ac2/5CB18CEA/t51.2885-19/s150x150/1516045_749754518492368_624460177_a.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      child: Scaffold(
      backgroundColor: new Color(0xfff8faf8),
      appBar: new AppBar(
        backgroundColor: Colors.indigoAccent[400],
        elevation: 1.0,
        centerTitle: true,
        title: Text(
          "Korzi",
          textAlign: TextAlign.center,
        ),
         bottom: TabBar(tabs: <Widget>[
              Tab(
                text: "Etkinlikler",
              ),
              Tab(text: "Topluluklar")
            ])
      ),
      body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            HorizontalTab(
              images: urls,
            ),
            VerticalTab(
              images: urlsLogo,
            )
          ],
        ),  
      bottomNavigationBar: new Container(
        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,
        child: new BottomAppBar(
          color: Colors.indigoAccent,
          child: new Row(
            // alignment: MainAxisAlignment.spaceAround,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(
                icon: Icon(
                  Icons.home,
                ),
                onPressed: () {},
              ),
              new IconButton(
                icon: Icon(
                  Icons.search,
                ),
                onPressed: () {},
              ),
              new IconButton(
                icon: Icon(
                  Icons.add_circle,
                ),
                onPressed: () {},
              ),
              new IconButton(
                icon: Icon(
                  Icons.check_circle_outline,
                ),
                onPressed: () {},
              ),
              new IconButton(
                icon: Icon(
                  Icons.account_circle,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    ),
    length: 2,
    );
  }
}
