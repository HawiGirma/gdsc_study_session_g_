import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'salomon_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        scrollBehavior: const MaterialScrollBehavior().copyWith(
          dragDevices: {PointerDeviceKind.mouse},
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("GDSC bookstore"),
        leading: IconButton(
          icon: const Icon(Icons.sort),
          onPressed: () {},
        ),
      ),
      body:
          ListView(padding: const EdgeInsets.symmetric(horizontal: 10.0), children: [
        Row(children: [
          Expanded(
              child: SearchBar(
                  hintText: 'Looking for...',
                  padding: const MaterialStatePropertyAll<EdgeInsets>(
                      EdgeInsets.symmetric(horizontal: 10.0)),
                  trailing: <Widget>[
                Tooltip(
                  message: 'Search ',
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                )
              ])),
          Container(
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.tune,
                  color: Colors.blue,
                )),
          )
        ]),
        Container(
          margin: const EdgeInsets.only(top: 10.0),
          alignment: Alignment.center,
          width: 250,
          height: 200.0,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Color.fromARGB(255, 161, 167, 201),
                  Color.fromARGB(255, 41, 61, 177),
                  Color.fromARGB(255, 161, 167, 202)
                ],
              )),
          child: Row(
            children: [
              const Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 52.0)),
                      Icon(Icons.pause, color: Colors.white),
                    ],
                  )),
              Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                          text: const TextSpan(
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'To day reader tomorrow '),
                          TextSpan(
                              text: 'Leader',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 45.0)),
                        ],
                      )),
                      const Padding(padding: EdgeInsets.only(bottom: 20.0)),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.translate,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.bookmark,
                            color: Colors.white,
                          ),
                          Icon(Icons.share, color: Colors.white)
                        ],
                      )
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: 'Sep 23,2023'),
                          ],
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 30.0)),
                      const Icon(Icons.pause, color: Colors.white)
                    ],
                  ))
            ],
          ),
        ),
        const Text(
          'Categories',
          style: TextStyle(fontSize: 20),
        ),
        Wrap(
          children: <Widget>[
            Container(
              constraints: const BoxConstraints(maxWidth: 100),
              margin: const EdgeInsets.only(top: 10.0, right: 10.0),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(216, 179, 178, 178),
                  borderRadius:
                      BorderRadiusDirectional.all(Radius.circular(7.0))),
              child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.all(10),
                    textStyle: const TextStyle(fontSize: 14),
                  ),
                  onPressed: () {},
                  child: const Expanded(
                      child: Row(
                    children: [
                      Icon(Icons.health_and_safety_outlined),
                      Text('Health')
                    ],
                  ))),
            ),
            Container(
              width: 100,
              margin: const EdgeInsets.only(top: 10.0, right: 10.0),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(216, 179, 178, 178),
                  borderRadius:
                      BorderRadiusDirectional.all(Radius.circular(7.0))),
              child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.all(10),
                    textStyle: const TextStyle(fontSize: 14),
                  ),
                  onPressed: () {},
                  child: const Expanded(
                      child: Row(
                    children: [Icon(Icons.science_outlined), Text('Science')],
                  ))),
            ),
            Container(
              width: 100,
              margin: const EdgeInsets.only(top: 10.0, right: 10.0),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(216, 179, 178, 178),
                  borderRadius:
                      BorderRadiusDirectional.all(Radius.circular(7.0))),
              child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.all(10),
                    textStyle: const TextStyle(fontSize: 14),
                  ),
                  onPressed: () {},
                  child: const Expanded(
                      child: Row(
                    children: [
                      Icon(Icons.history_edu_outlined),
                      Text('History')
                    ],
                  ))),
            ),
            Container(
              width: 110,
              margin: const EdgeInsets.only(top: 10.0, right: 10.0),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(216, 179, 178, 178),
                  borderRadius:
                      BorderRadiusDirectional.all(Radius.circular(7.0))),
              child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.all(10),
                    textStyle: const TextStyle(fontSize: 14),
                  ),
                  onPressed: () {},
                  child: const Expanded(
                      child: Row(
                    children: [
                      Icon(Icons.military_tech_outlined),
                      Text('Tech')
                    ],
                  ))),
            ),
            Container(
              width: 110,
              margin: const EdgeInsets.only(top: 10.0, right: 10.0),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(216, 179, 178, 178),
                  borderRadius:
                      BorderRadiusDirectional.all(Radius.circular(7.0))),
              child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.all(10),
                    textStyle: const TextStyle(fontSize: 14),
                  ),
                  onPressed: () {},
                  child: const Expanded(
                      child: Row(
                    children: [
                      Icon(Icons.psychology_alt_outlined),
                      Text('philosopy')
                    ],
                  ))),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.only(bottom: 10.0)),
        const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            'Recomendation',
            style: TextStyle(fontSize: 20),
          ),
          Icon(Icons.arrow_forward_outlined)
        ]),
        Container(
            height: 185,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'images/amharic.png',
                        width: 100,
                      ),
                      const Text('food recipies'),
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'images/rich.png',
                        width: 100,
                      ),
                      const Text('popular books'),
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'images/napolean.png',
                        width: 100,
                      ),
                      const Text('mindset books'),
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'images/amharic.jpg',
                        width: 100,
                      ),
                      const Text('sientific-books'),
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'images/mind.png.png',
                        width: 100,
                      ),
                      const Text('recipie')
                    ],
                  ),
                )
              ],
            )),
        const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            'New',
            style: TextStyle(fontSize: 20),
          ),
          Icon(Icons.arrow_forward_outlined)
        ]),
        Container(
            height: 185,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'images/food.png',
                        width: 100,
                      ),
                      const Text('recipie books')
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'images/kjv.png',
                        width: 100,
                      ),
                      const Text('sientific books'),
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'images/foodrecipe.png',
                        width: 100,
                      ),
                      const Text('popular books'),
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'images/mind.png',
                        width: 100,
                      ),
                      const Text('self help books'),
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'images/foodrecipe.png',
                        width: 100,
                      ),
                      const Text('food recipies'),
                    ],
                  ),
                ),
              ],
            )),
        const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            'Trending',
            style: TextStyle(fontSize: 20),
          ),
          Icon(Icons.arrow_forward_outlined)
        ]),
        Container(
            height: 185,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Column(
                  children: [
                    Image.asset(
                      'images/food.png',
                      width: 100,
                    ),
                    const Text('food recipies'),
                  ],
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'images/rich.png',
                        width: 100,
                      ),
                      const Text('popular books'),
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'images/mind.png',
                        width: 100,
                      ),
                      const Text('self-help books'),
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'images/napolean.png',
                        width: 100,
                      ),
                      const Text('novel'),
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'images/foodrecipe.png',
                        width: 100,
                      ),
                      const Text('foodrecipe')
                    ],
                  ),
                )
              ],
            ))
      ]),
      bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            SalomonBottomBarItem(
                icon: const Icon(Icons.library_books),
                title: const Text("data"),
                selectedColor: Colors.grey),
            SalomonBottomBarItem(
                icon: const Icon(Icons.book),
                title: const Text("Books"),
                selectedColor: Colors.teal),
            SalomonBottomBarItem(
              icon: const Icon(Icons.home_outlined),
              title: const Text("Home"),
              selectedColor: Colors.orange,
            ),
            SalomonBottomBarItem(
                icon: const Icon(Icons.my_library_books_outlined),
                title: const Text("Libray"),
                selectedColor: Colors.blueAccent),
            SalomonBottomBarItem(
                icon: const Icon(Icons.person),
                title: const Text("Account"),
                selectedColor: Colors.yellowAccent),
            )
          ]),
    );
  }
}
     
