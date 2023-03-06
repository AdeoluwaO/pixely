import 'package:tmdb_api/tmdb_api.dart';

const String apiKey = '187d2a9c2c1a66c6beac88a4c4681554';
const String readAccessToken =
    'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxODdkMmE5YzJjMWE2NmM2YmVhYzg4YTRjNDY4MTU1NCIsInN1YiI6IjY0MDM3ZWJmNjdkY2M5MDBkNDgxNTRjOSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.wqo-ssgurxa_rBWyGWtiISS2G_eAtVAIlex9NALP7W0';

Future fecthMovies() async {
  final tmbdConfig = TMDB(
    ApiKeys(apiKey, readAccessToken),
    logConfig: ConfigLogger(showLogs: true, showErrorLogs: true),
  );
  Map results = await tmbdConfig.v3.movies.getTopRated();
  return results;
}

// get requst for video
Future fecthMoviesVideo() async {
  final tmbdConfig = TMDB(
    ApiKeys(apiKey, readAccessToken),
    logConfig: ConfigLogger(showLogs: true, showErrorLogs: true),
  );
  Map results = await tmbdConfig.v3.movies.getTopRated();
  return results;
}

Future fecthTvShows() async {
  final tmbdConfig = TMDB(
    ApiKeys(apiKey, readAccessToken),
    logConfig: ConfigLogger(showLogs: true, showErrorLogs: true),
  );
  Map results = await tmbdConfig.v3.tv.getTopRated();
  return results;
}
