import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_apps_revision/Providers/article_provider.dart';
import 'package:news_apps_revision/Widget/custom_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<ArticleProvider>(
        builder: (context, objectProvider, child) {
          var objectModel = objectProvider.articleModel;
          if(objectModel == null){
            objectProvider.GetData();
            return CircularProgressIndicator();
          }else{
            return ListView.builder(
              itemBuilder: (context, index) {
              return  CustomWidget(
                    image: objectModel.listdata[index]['urlToImage'],
                    title: objectModel.listdata[index]['title'],
                    description: objectModel.listdata[index]['description']
                );
              },
              itemCount: 10,
            );
          }
        },
      ),
    );
  }
}
