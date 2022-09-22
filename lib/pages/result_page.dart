import 'package:flutter/material.dart';

import 'package:programming_language_test/providers/app_provider.dart';
import 'package:provider/provider.dart';

import 'pages.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ваш результат:',
          textAlign: TextAlign.center,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Consumer<AppProvider>(
            builder: (context, provider, _) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: double.infinity),
                  Container(
                    child: Text(
                      provider.result.text,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          provider.setStartState();
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => MainPage()),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          child: Text('ПРОЙТИ ЗАНОВО'),
                        ),
                      ),
                      SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () {
                          provider.setStartState();
                          Navigator.pop(context);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          child: Text('ВЫЙТИ В МЕНЮ'),
                        ),
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
