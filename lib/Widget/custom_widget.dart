import 'package:flutter/cupertino.dart';

class CustomWidget extends StatelessWidget {

  String image;
  String title;
  String description;

   CustomWidget({super.key ,required this.image,required this.title,required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(image),
        SizedBox(height: 30,),
        Text(title , style: TextStyle(fontWeight: FontWeight.bold),),
        SizedBox(height: 25,),
        Text(description),
      ],
    );
  }
}
