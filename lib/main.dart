import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: NewSlide(),
    );
  }
}

class NewSlide extends StatefulWidget {
  const NewSlide({Key? key}) : super(key: key);

  @override
  State<NewSlide> createState() => _NewSlideState();
}

class _NewSlideState extends State<NewSlide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black87,
          elevation: 0,
          leading: IconButton(
            onPressed: (() {
              Navigator.pop(context);
            }),
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 40,
              color: Colors.grey,
            ),
          ),
          title:Container(
            margin: const EdgeInsets.only(  left: 100),
            child: const Text('New',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey)), )

      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
              children: [
                Container(
                  height: 540,

                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    color: Colors.black87,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      const Text('Add new \nsubscription',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 56,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey)),
                      Container(
                        height: 290,

                        padding: const EdgeInsets.only(top: 70),
                        child: ListView(children: [
                          CarouselSlider(
                            items: [
                              Container(
                                decoration: const BoxDecoration(

                                  borderRadius:
                                  BorderRadius.all(Radius.circular(70)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/0123.jpg",
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(8.0),
                                decoration: const BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(70)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/0123.jpg",
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(8.0),
                                decoration: const BoxDecoration(
                                  // color: Colors.red,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(70)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/0123.jpg",
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ],
                            options: CarouselOptions(
                              enlargeCenterPage: true,
                              autoPlay: true,
                              aspectRatio: 16 / 9,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enableInfiniteScroll: true,
                              autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                              viewportFraction: 0.6,
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
                // ),
              ],
            )),
      ),
    );
  }
}