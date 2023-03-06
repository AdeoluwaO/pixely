import 'package:flutter/material.dart';

// local imports
import '../utils/export_utils.dart' as fetch;
import '../models/trending_movies_widget.dart';
import '../models/latest_tv_shows.dart';
import '../ui/loading_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // api data is set this lists
  List trendingMovies = [];
  List tvShows = [];
  // for validating the api if the data if fetched or not
  bool isLoading = true;
  bool isDone = false;

// fetching from an api once page is mounted
  @override
  void initState() {
    fetchingMovies();
    super.initState();
  }

// disposes the api call ones the page is close
  @override
  void dispose() {
    fetchingMovies();
    fetch.fecthMovies();
    fetch.fecthTvShows();
    super.dispose();
  }

  Future fetchingMovies() async {
    isLoading;
    var movies = await fetch.fecthMovies();
    var tvShowResponse = await fetch.fecthTvShows();
    !isLoading;
    //print(tvShowResponse);
    setState(() {
      if (isLoading) {
        isDone = true;
      }

      trendingMovies = movies['results'];
      tvShows = tvShowResponse['results'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: isDone
            ? Container(
                margin: EdgeInsetsDirectional.only(
                    top: MediaQuery.of(context).size.height * 0.06),
                child: Column(
                  children: [
                    TvShows(tvShows: tvShows),
                    TrendingMovies(trendingMovies: trendingMovies)
                  ],
                ))
            : const Center(
                child: LoadingScreen(),
              ));
  }
}
