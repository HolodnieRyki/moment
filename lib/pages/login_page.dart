import 'package:flutter/material.dart';
import 'package:moment/homepage.dart';
import 'package:moment/util/my_button.dart';
import 'package:moment/util/my_texfield.dart';
import 'package:audioplayers/audioplayers.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  static AudioCache player = new AudioCache();
  final alarmAudioPath = "casong.mp3";
  //textcontroller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //method signin
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 5,
              ),
              //logo
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: () {
                      player.play(alarmAudioPath);
                    },
                    child: Container(
                      child: Image.asset(
                        'assets/catg.gif',
                        scale: 6,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
              //text
              Text(
                'С возвращением! Мы скучали!',
                style: TextStyle(color: Colors.grey[700], fontSize: 24),
              ),
              const SizedBox(
                height: 50,
              ),
              //form
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              //forgot pass
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Забыли пароль?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              MyButton(onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              }),

              const SizedBox(
                height: 25,
              ),

              //sigup button

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Нет аккаунта?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Зарегистрируйтесь сейчас!',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
