class NewsModel {
  late String kategori;
  late String image;
  late String headline;
  late String lastUpdate;
  late String avatar;
  late String userName;

  NewsModel(
      {required this.kategori,
      required this.image,
      required this.headline,
      required this.lastUpdate,
      required this.avatar,
      required this.userName});

  NewsModel.fromJson(Map<String, dynamic> json) {
    kategori = json['kategori'];
    image = json['image'];
    headline = json['headline'];
    lastUpdate = json['lastUpdate'];
    avatar = json['avatar'];
    userName = json['userName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kategori'] = this.kategori;
    data['image'] = this.image;
    data['headline'] = this.headline;
    data['lastUpdate'] = this.lastUpdate;
    data['avatar'] = this.avatar;
    data['userName'] = this.userName;
    return data;
  }

  static List<NewsModel> getGenerateData() {
    final List<NewsModel> news = [
      NewsModel(
        kategori: "Lifestyle",
        image: "assets/images/berita-1.jpg",
        headline: "Kebiasaan buruk anak programer",
        lastUpdate: "4 Jam lalu",
        avatar: "assets/images/profile.jpg",
        userName: "Sebastian",
      ),
      NewsModel(
        kategori: "Teknologi",
        image: "assets/images/berita-2.jpg",
        headline: "Framework baru bikin ngoding makin santai",
        lastUpdate: "2 Jam lalu",
        avatar: "assets/images/profile.jpg",
        userName: "Dinda",
      ),
      NewsModel(
        kategori: "Kesehatan",
        image: "assets/images/berita-3.jpg",
        headline: "Cara menjaga kesehatan mata untuk programmer",
        lastUpdate: "6 Jam lalu",
        avatar: "assets/images/profile.jpg",
        userName: "Rizky",
      ),
    ];
    return news;
  }
}
