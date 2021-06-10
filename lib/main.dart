import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Find Your Coffee Shop',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'Find Your Coffee Shop'),
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
      // appBar: AppBar(
      //   title: Text(
      //     'Coffee Beans Finder',
      //     style: TextStyle(fontSize: 40.0),
      //   ),
      //   toolbarHeight: 100,
      // ),
      body: Scrollbar(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Text('COFFEE BEANS FINDER',
                    style: GoogleFonts.sawarabiMincho()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Text('おいしいコーヒー豆のお店を選ぼう',
                    style: GoogleFonts.sawarabiMincho()),
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
                  onPressed: () {},
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
                  onPressed: () {},
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
                height: 300,
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
                height: 300,
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
                height: 300,
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
