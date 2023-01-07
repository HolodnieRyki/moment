import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;
  UserPosts({required this.name});
  //const UserPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  //profile photo
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[300], shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  //username
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              //iconmenu
              Icon(Icons.menu),
            ],
          ),
        ),
        //post
        Container(
          height: 400,
          color: Colors.grey,
        ),

        //после поста что идет
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.favorite),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Icon(Icons.chat_bubble_outline),
              ),
              Icon(Icons.share),
            ],
          ),
        ),

        //текст поста
        Padding(
          padding: EdgeInsets.only(left: 16.0, top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                        text: name,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'i/m change my life'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
