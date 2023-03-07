import 'package:flutter/material.dart';

// local imports
import '../utils/export_utils.dart' as fetch;
import '../models/trending_movies_widget.dart';
import '../models/latest_tv_shows.dart';
import '../models/trending.dart';
import '../ui/loading_screen.dart';
import '../design-system/customtext/headline_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // api data is set this lists
  List trendingMovies = [];
  List tvShows = [];
  List trending = [];
  // for validating the api if the data if fetched or not
  bool isLoading = true;
  bool isDone = false;

// fetching from an api once page is mounted
  @override
  void initState() {
    fetchingMovies();
    super.initState();
  }

// disposes the api call ones the page is destroyed
  @override
  void dispose() {
    fetchingMovies();
    fetch.fetchTrending();
    fetch.fecthMovies();
    fetch.fecthTvShows();
    super.dispose();
  }

  Future fetchingMovies() async {
    isLoading;
    var movies = await fetch.fecthMovies();
    var tvShowResponse = await fetch.fecthTvShows();
    var trends = await fetch.fetchTrending();
    !isLoading;
    setState(() {
      if (isLoading) {
        isDone = true;
      }

      trendingMovies = movies['results'];
      tvShows = tvShowResponse['results'];
      trending = trends['results'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: isDone
            ? SafeArea(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.02,
                    horizontal: MediaQuery.of(context).size.height * 0.01,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HeadlineText(text: 'Trending'),
                      SizedBox(
                        height: 450,
                        child: ListView.builder(
                            physics: const ClampingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: trending.length,
                            itemBuilder: (_, index) {
                              return Container(
                                child: Column(
                                  children: [
                                    Trending(
                                      image: trending[index]["poster_path"],
                                      name: trending[index]["name"],
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                      const HeadlineText(text: 'Tv Shows'),
                      SizedBox(
                        height: 230,
                        child: ListView.builder(
                          physics: const ClampingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: tvShows.length,
                          itemBuilder: (_, index) {
                            return Container(
                              child: Column(
                                children: [
                                  TvShows(
                                    image: tvShows[index]['poster_path'],
                                    name: tvShows[index]['name'],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      const HeadlineText(text: 'Trending Movies'),
                      SizedBox(
                        height: 350,
                        child: ListView.builder(
                          physics: const ClampingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: trendingMovies.length,
                          itemBuilder: (_, index) {
                            return Container(
                              child: Column(
                                children: [
                                  TrendingMovies(
                                    image: trendingMovies[index]['poster_path'],
                                    title: trendingMovies[index]['title'],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : const Center(
                child: LoadingScreen(),
              ));
  }
}
