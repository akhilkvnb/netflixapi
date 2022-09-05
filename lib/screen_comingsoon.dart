import 'package:flutter/material.dart';
import 'package:netflix/screen_home.dart';

class ScreenComkingsoon extends StatefulWidget {
  const ScreenComkingsoon({Key? key}) : super(key: key);

  @override
  State<ScreenComkingsoon> createState() => _ScreenComkingsoonState();
}

class _ScreenComkingsoonState extends State<ScreenComkingsoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Coming Soon',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Notifications',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          Flexible(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: Home.comingsoon.length,
              itemBuilder: (BuildContext ctx, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(
                        'http://image.tmdb.org/t/p/w500' +
                            Home.comingsoon[index]['poster_path'],
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Text(
                            Home.comingsoon[index]['release_date'] ?? 'Loading',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10, left: 10, right: 10),
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              Home.comingsoon[index]['title'] ?? 'Loading',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: 5, left: 10, right: 10),
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              Home.comingsoon[index]['overview'] ?? 'Loading',
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                              maxLines: 4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
