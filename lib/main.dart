import 'package:coffee_map/pages/details.dart';
import 'package:coffee_map/pages/map.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Find Your Coffee Shop',
      routes: {
        '/': (context) => MyHomePage(title: 'Find Your Coffee Shop'),
        'details': (context) => Details(),
        'map': (context) => MapSample(),
      },
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Coffee Beans Finder',
          style: GoogleFonts.sawarabiMincho(),
        ),
        toolbarHeight: 50,
      ),
      body: Scrollbar(
        child: ListView(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Text('おいしいコーヒー豆のお店を選ぼう',
                      style: GoogleFonts.sawarabiMincho()),
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Shop Name',
                suffixIcon: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    print('hello');
                  },
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text('Nearest'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(30.0),
                    textStyle: TextStyle(fontSize: 15.0),
                    primary: Colors.teal,
                    onPrimary: Colors.white,
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'details');
                  },
                ),
                ElevatedButton(
                  child: const Text('All'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(50, 30, 50, 30),
                    textStyle: TextStyle(fontSize: 15.0),
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'map');
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: Colors.white,
              child: SizedBox(
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white38,
                        radius: 58,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://i2.wp.com/exhibit-at.com/wp-content/uploads/2014/04/maruyama-coffee-logo.png?w=350&ssl=1"), //NetworkImage
                          radius: 50,
                        ), //CircleAvatar
                      ), //CirclAvatar
                      SizedBox(
                        height: 10,
                      ), //SizedBox
                      Text('MARUYAMA COFFEE',
                          style: GoogleFonts.sawarabiMincho()
                          //Textstyle
                          ), //Text
                      SizedBox(
                        height: 10,
                      ), //SizedBox
                      Text(
                        'Maruyama Coffee is a speciality coffee company established in 1991, based in Karuizawa, Nagano Prefecture, Japan.',
                        style: GoogleFonts.sawarabiMincho(), //Textstyle
                      ), //Text
                      SizedBox(
                        height: 10,
                      ), //SizedBox
                      SizedBox(
                        width: 80,
                        child: RaisedButton(
                          onPressed: () => null,
                          color: Colors.amber,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                // Icon(Icons.touch_app),
                                Text('Visit',
                                    style: GoogleFonts.sawarabiMincho()),
                              ],
                            ), //Row
                          ), //Padding
                        ), //RaisedButton
                      ) //SizedBox
                    ],
                  ), //Column
                ), //Padding
              ), //SizedBox
            ),
            Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: Colors.white,
              child: SizedBox(
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white38,
                        radius: 58,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://i2.wp.com/exhibit-at.com/wp-content/uploads/2014/04/maruyama-coffee-logo.png?w=350&ssl=1"), //NetworkImage
                          radius: 50,
                        ), //CircleAvatar
                      ), //CirclAvatar
                      SizedBox(
                        height: 10,
                      ), //SizedBox
                      Text('MARUYAMA COFFEE',
                          style: GoogleFonts.sawarabiMincho()
                          //Textstyle
                          ), //Text
                      SizedBox(
                        height: 10,
                      ), //SizedBox
                      Text(
                        'Maruyama Coffee is a speciality coffee company established in 1991, based in Karuizawa, Nagano Prefecture, Japan.',
                        style: GoogleFonts.sawarabiMincho(), //Textstyle
                      ), //Text
                      SizedBox(
                        height: 10,
                      ), //SizedBox
                      SizedBox(
                        width: 80,
                        child: RaisedButton(
                          onPressed: () => null,
                          color: Colors.amber,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                // Icon(Icons.touch_app),
                                Text('Visit',
                                    style: GoogleFonts.sawarabiMincho()),
                              ],
                            ), //Row
                          ), //Padding
                        ), //RaisedButton
                      ) //SizedBox
                    ],
                  ), //Column
                ), //Padding
              ), //SizedBox
            ),
            Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: Colors.white,
              child: SizedBox(
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white38,
                        radius: 58,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://i2.wp.com/exhibit-at.com/wp-content/uploads/2014/04/maruyama-coffee-logo.png?w=350&ssl=1"), //NetworkImage
                          radius: 50,
                        ), //CircleAvatar
                      ), //CirclAvatar
                      SizedBox(
                        height: 10,
                      ), //SizedBox
                      Text('MARUYAMA COFFEE',
                          style: GoogleFonts.sawarabiMincho()
                          //Textstyle
                          ), //Text
                      SizedBox(
                        height: 10,
                      ), //SizedBox
                      Text(
                        'Maruyama Coffee is a speciality coffee company established in 1991, based in Karuizawa, Nagano Prefecture, Japan.',
                        style: GoogleFonts.sawarabiMincho(), //Textstyle
                      ), //Text
                      SizedBox(
                        height: 10,
                      ), //SizedBox
                      SizedBox(
                        width: 80,
                        child: RaisedButton(
                          onPressed: () => null,
                          color: Colors.amber,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                // Icon(Icons.touch_app),
                                Text('Visit',
                                    style: GoogleFonts.sawarabiMincho()),
                              ],
                            ), //Row
                          ), //Padding
                        ), //RaisedButton
                      ) //SizedBox
                    ],
                  ), //Column
                ), //Padding
              ), //SizedBox
            ),
          ],
        ),
      ),
    );
  }
}
