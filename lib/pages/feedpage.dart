import 'package:flutter/material.dart';
import '../util/bubble_stories.dart';
import '../util/user_posts.dart';

class FeedPage extends StatelessWidget {
  final List people = [
    'name',
    'name',
    'name',
    'name',
    'name',
    'name',
    'name',
  ];
  //const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Moment',
              style: TextStyle(
                  color: Colors.black, fontFamily: 'Kalam', fontSize: 32.0),
            ),
            Row(children: [
              Icon(Icons.add),
              Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite)),
            ])
          ],
        ),
      ),
      body: Column(
        children: [
          //stories
          Container(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(text: people[index]);
                }),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPosts(name: people[index]);
                }),
          ),
        ],
      ),
    );
  }
}
