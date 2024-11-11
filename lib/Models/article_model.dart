class ArticleModel{
  List<dynamic> listdata;

  ArticleModel({required this.listdata});

  factory ArticleModel.fromjson(Map<String,dynamic> json){
    return ArticleModel(listdata: json['articles']);
  }
}