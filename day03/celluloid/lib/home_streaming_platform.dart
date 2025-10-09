/* 
"An online movie streaming platform offers a large library of films. 
Users can browse the available movies, add them to their watchList, 
and rate the ones they've seen. 
The system keeps track of each user's watch history 
and recommends similar films based on their preferences."

*/

class HomeStreamingPlatform {

  List<String> movieLibrary = ["Inception", "The Matrix", "Interstellar"];
  Map<String, List<String>> watchLists = {
    "u1": ["Inception"],
    "u2": [],
  };
  Map<String, List<String>> watchHistory = {
    "u1": ["The Matrix"],
    "u2": ["Inception"],
  };
  Map<String, List<String>> recommendations = {
    "u1": ["Interstellar"],
    "u2": ["The Matrix"],
  };

  void browseMovies() {}
  void addToWatchList() {}
  void rateMovie() {}
  void trackWatchHistory() {}
  void recommendMovies() {}

  void displayUserProfile() {}
  void updateUserProfile() {}
}
