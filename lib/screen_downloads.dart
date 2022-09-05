import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/screen_home.dart';

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Downloads',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Row(
              children: const [
                Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Smart Downloads',
                    style: TextStyle(
                      color: Colors.white60,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Introducing Downloads for You',
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'We will download a personalised selection of movies and shows for you, so theres always something to watch on your phones',
              style: TextStyle(color: Colors.white60),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),
                  color: Colors.white24,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Transform.rotate(
                      angle: 10 * pi / 180,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Container(
                          margin: const EdgeInsets.only(left: 30),
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                  'http://image.tmdb.org/t/p/w500' +
                                      Home.trendingmovies[1]['poster_path'],
                                ),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                    ),
                    Transform.rotate(
                      angle: -10 * pi / 180,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: Container(
                            margin: const EdgeInsets.only(right: 30),
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                    'http://image.tmdb.org/t/p/w500' +
                                        Home.topratedmovies[1]['poster_path'],
                                  ),
                                  fit: BoxFit.fill),
                            )),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(
                              'http://image.tmdb.org/t/p/w500' +
                                  Home.topratedmovies[4]['poster_path'],
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: MaterialButton(
                color: Colors.blue,
                onPressed: () {},
                child: const Center(
                    child: Text(
                  'Set Up',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ))),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .001,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: MaterialButton(
                color: Colors.white24,
                onPressed: () {},
                child: const Center(
                    child: Text(
                  'Find more to Download',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ))),
          ),
        ],
      ),
    );
  }
}
