import 'package:flutter/cupertino.dart';
import 'package:news_apps_revision/Models/article_model.dart';
import 'package:news_apps_revision/Services/article_service.dart';

class ArticleProvider extends ChangeNotifier{
  ArticleModel? articleModel;

  Future<void> GetData() async{
    articleModel = await ArticleService.getData();
    notifyListeners();
  }
}