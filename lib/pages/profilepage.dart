import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //фото профиля
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.grey[300], shape: BoxShape.circle),
                ),

                //число постов, подписчиков и тд
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            '237',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text('Posts'),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '287',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text('Followers'),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '10',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text('Following'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //имя и описание(bio)
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'name',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'hehe, файная хуйня',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'https://vk.com/holodnie_ryki',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          )
          /*Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'name',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'bio',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),*/
        ],
      ),
    );
  }
}
