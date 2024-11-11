import 'package:dio/dio.dart';
import 'package:news_apps_revision/Models/article_model.dart';

class ArticleService{
  static Dio dio = Dio();
  
 static Future<ArticleModel> getData() async{
   try{
     Response response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=9abe079828714ef49f378f36c4fb89e2');
     if(response.statusCode == 200){
       return ArticleModel.fromjson(response.data);
     }
     else{
       throw Exception('Error');
     }
   }
    catch(e){
     throw Exception("Find This $e");
    }
  }
}