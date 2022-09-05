import 'package:flutter/material.dart';
import 'package:netflix/screen_home.dart';
import 'package:netflix/screendetails.dart';

class TopRated extends StatelessWidget {
  const TopRated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height * 0.28,
        child: SizedBox(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Home.topratedmovies.length,
              itemBuilder: (BuildContext ctx, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => ScreenDetails(
                                    name: Home.topratedmovies[index]['title'] ??
                                        'Loading',
                                    description: Home.topratedmovies[index]
                                            ['overview'] ??
                                        'Loading',
                                    bannerurl:
                                        'http://image.tmdb.org/t/p/w500' +
                                            Home.topratedmovies[index]
                                                ['backdrop_path'],
                                    posterurl:
                                        'http://image.tmdb.org/t/p/w500' +
                                            Home.topratedmovies[index]
                                                ['poster_path'],
                                    vote: Home.trendingmovies[index]
                                                    ['vote_average']
                                                .toString() !=
                                            null
                                        ? Home.trendingmovies[index]
                                                ['vote_average']
                                            .toString()
                                        : 'Loading',
                                    launchon: Home.topratedmovies[index]
                                            ['release_date'] ??
                                        'Loading',
                                  )));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.26,
                            width: MediaQuery.of(context).size.width * 0.45,
                            // child: Image.asset('assets/money.jpg',fit: BoxFit.cover,),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      'http://image.tmdb.org/t/p/w500' +
                                          Home.topratedmovies[index]
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
