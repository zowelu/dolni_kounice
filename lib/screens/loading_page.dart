import 'package:flutter/material.dart';
import 'package:mesto_pamatek/constants/constants.dart';
import 'package:mesto_pamatek/components/my_button.dart';

//Uvítací obrazovka s tlačítkem na přesměrování do $HomaPage()
class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(),
                child: Container(
                  height: 200,
                  child: Image(
                    image: AssetImage(
                      'assets/images/dk_znak_icon.png',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Text(
                'Město památek',
                style: TextStyle(
                    fontFamily: 'Kaushan', fontSize: 40.0, color: Colors.white),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 50.0,
                child: MyButton(
                    textOfButton: 'Pokračovat',
                    onPressed: () {
                      Navigator.pushNamed(context, '/homePage');
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
