class MovieModel {
  String movie;
  String title;
  List<String> singer;
  String image;
  String path;

  MovieModel(
      {required this.movie,
      required this.title,
      required this.singer,
      required this.image,
      required this.path});

  factory MovieModel.fromMap({required Map data}) {
    return MovieModel(
        movie: data['movie'],
        title: data['data'],
        singer: data['singer'],
        image: data['image'],
        path: data['path']);
  }
}
