class NewsModel {
  late String kategori;
  late String image;
  late String headline;
  late String lastUpdate;
  late String avatar;
  late String userName;
  late String detail =
      """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nunc dui, pharetra vitae risus ac, scelerisque commodo dui. Quisque posuere, elit semper lacinia aliquam, nulla enim fermentum ex, id blandit quam nibh non urna. Vivamus posuere dictum arcu, ut porta metus gravida quis. Ut eget nulla et velit pharetra molestie a vitae purus. Aenean auctor dictum sodales. Quisque eu eleifend lectus. Integer dignissim mi nisl, non molestie diam ultrices ac.

Praesent neque justo, eleifend id sodales at, imperdiet sit amet odio. Donec hendrerit purus sed dui tristique, a tempor justo consectetur. Quisque vel dapibus sapien. Maecenas at nunc vitae libero eleifend pretium. Phasellus mattis lectus eu orci iaculis, eget mollis ante pellentesque. Fusce id felis fringilla, egestas nibh vel, placerat neque. Duis consequat ullamcorper diam et laoreet. Quisque a porta libero, hendrerit placerat enim. Phasellus fringilla pellentesque nulla eu venenatis.

Sed scelerisque elementum metus, ac euismod neque dapibus vel. Fusce nibh est, sagittis ac velit vel, porttitor accumsan sem. Donec auctor metus eros, at blandit velit elementum ac. Ut molestie commodo condimentum. Nulla eu commodo arcu. Sed tempus augue ut nibh eleifend, a elementum mi sagittis. Aliquam in ex egestas, volutpat magna ut, dapibus magna. Aenean tellus augue, dapibus id pulvinar ut, aliquam vitae urna. In elementum nec risus sit amet cursus. Praesent ultrices, eros quis feugiat vestibulum, ex sapien suscipit tellus, ut tristique metus sapien sit amet magna. Nullam interdum, tellus sit amet blandit consequat, mi tellus consectetur arcu, id fermentum purus risus a lectus. Fusce euismod tellus nec lectus malesuada, non eleifend nisi laoreet. Sed est turpis, aliquam quis lorem ac, varius tincidunt sapien. """;

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
    detail = json['detail'];
    userName = json['userName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kategori'] = this.kategori;
    data['image'] = this.image;
    data['headline'] = this.headline;
    data['lastUpdate'] = this.lastUpdate;
    data['avatar'] = this.avatar;
    data['detail'] = this.detail;
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

  static List<NewsModel> getBanner() {
    final List<NewsModel> news = [
      NewsModel(
        kategori: "Teknologi",
        image: "assets/images/berita-1.jpg",
        headline: "Dunia Teknologi: Ancaman AI makin meninggi!!",
        lastUpdate: "4 Jam lalu",
        avatar: "assets/images/berita-1.jpg",
        userName: "Andy",
      ),
      NewsModel(
        kategori: "Teknologi",
        image: "assets/images/berita-2.jpg",
        headline: "Akankan robot menguasai dunia?",
        lastUpdate: "2 Jam lalu",
        avatar: "assets/images/berita-2.jpg",
        userName: "Agung",
      ),
      NewsModel(
        kategori: "Lifestyle",
        image: "assets/images/berita-3.jpg",
        headline: "10 Ide kreatif untuk meningkatkan produktivitas",
        lastUpdate: "6 Jam lalu",
        avatar: "assets/images/berita-3.jpg",
        userName: "Sandra",
      ),
    ];
    return news;
  }
}
