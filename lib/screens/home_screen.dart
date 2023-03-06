import 'package:flutter/material.dart';

// local imports
import '../utils/export_utils.dart' as fetch;
import '../models/trending_movies_widget.dart';
import '../models/latest_tv_shows.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List trendingMovies = [];
  List tvShows = [];
  bool isLoading = true;
  bool isDone = false;

  @override
  void initState() {
    fetchingMovies();
    super.initState();
  }

  @override
  void dispose() {
    fetchingMovies();
    isLoading;
    isDone;
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
      print(tvShows);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: isDone
            ? Container(
                margin: EdgeInsetsDirectional.only(
                    top: MediaQuery.of(context).size.height * 0.06),
                child: TrendingMovies(trendingMovies: trendingMovies))
            : Center(
                child: Text('Getting Data...'),
              )
        //TvShows(tvShows: tvShows)
        );
  }
}
