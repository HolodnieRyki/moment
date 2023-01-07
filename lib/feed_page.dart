import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF0F6),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Moment',
                  style: TextStyle(fontFamily: 'Kalam', fontSize: 32.0),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 35.0,
                      child: IconButton(
                        onPressed: () => print('Message'),
                        icon: Icon(Icons.send),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5, //кол-во историй
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return SizedBox(
                    width: 10.0,
                  );
                }
                return Container(
                  margin: EdgeInsets.all(10.0),
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 2),
                          blurRadius: 6.0)
                    ],
                  ),
                  child: CircleAvatar(
                      child: ClipOval(
                    child: Image(
                      height: 60.0,
                      width: 60.0,
                      image: NetworkImage(
                          'https://sun9-25.userapi.com/impg/AtCH-PDU2TsY_OC2lL7XL5lFMgXC5PtxgHNP-A/f4F_2td3tCs.jpg?size=512x640&quality=95&sign=d835a32ee55a3d07acbb4e587eb29979&type=album'),
                      fit: BoxFit.cover,
                    ),
                  )),
                );
              },
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Container(
              width: double.infinity,
              height: 500.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0)),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black45,
                                    offset: Offset(0, 2),
                                    blurRadius: 6.0)
                              ],
                            ),
                            child: CircleAvatar(
                                child: ClipOval(
                              child: Image(
                                height: 50.0,
                                width: 50.0,
                                image: NetworkImage(
                                    'https://sun9-59.userapi.com/impg/QAYGyYuurp3rvaLy2ZMjDtC-JwdS6T279cATiA/nNmXRHKtw8k.jpg?size=480x480&quality=96&sign=2757f8d8a7eeead8b22ea777dfb2afa9&type=album'),
                                fit: BoxFit.cover,
                              ),
                            )),
                          ),
                          title: Text(
                            'Автор',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'время',
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.more_horiz),
                            color: Colors.black,
                            onPressed: () => print('more'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10.0),
                          width: double.infinity,
                          height: 340.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            /*boxShadow: [
                              BoxShadow(
                                  color: Colors.black45,
                                  offset: Offset(0, 5),
                                  blurRadius: 8.0)
                            ],*/
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://s.starladder.com/uploads/user_logo/b/4/5/1/meta_tag_c495b691bc6cb2563e40e672144bb47f.jpg'),
                                fit: BoxFit.fitWidth),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      IconButton(
                                        onPressed: () => print('like'),
                                        icon: Icon(Icons.favorite_border),
                                        iconSize: 30.0,
                                      ),
                                      Text(
                                        '2,555',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20.0),
                                  Row(
                                    children: <Widget>[
                                      IconButton(
                                        onPressed: () => print('comment'),
                                        icon: Icon(Icons.chat_bubble),
                                        iconSize: 30.0,
                                      ),
                                      Text(
                                        '211',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
