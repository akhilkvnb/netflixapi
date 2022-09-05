import 'package:flutter/material.dart';
import 'package:netflix/screen_home.dart';
import 'package:netflix/screendetails.dart';

class TrendingNow extends StatelessWidget {
  const TrendingNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height * 0.28,
        child: SizedBox(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Home.trendingmovies.length,
              itemBuilder: (BuildContext ctx, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => ScreenDetails(
                                  name: Home.trendingmovies[index]['title'] ??
                                      'Loading',
                                  description: Home.trendingmovies[index]['overview'] ??
                                      'Loading',
                                  bannerurl: 'http://image.tmdb.org/t/p/w500' +
                                      Home.trendingmovies[index]
                                          ['backdrop_path'],
                                  posterurl: 'http://image.tmdb.org/t/p/w500' +
                                      Home.trendingmovies[index]['poster_path'],
                                  vote: Home.trendingmovies[index]['vote_average'].toString() != null
                                      ? Home.trendingmovies[index]['vote_average']
                                          .toString()
                                      : 'Loading',
                                  launchon: Home.trendingmovies[index]
                                          ['release_date'] ??
                                      'Loading')));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.26,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      'http://image.tmdb.org/t/p/w500' +
                                          Home.trendingmovies[index]
                                              ['poster_path'],
                                    ),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ));
  }
}
