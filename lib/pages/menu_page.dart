import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:programming_language_test/providers/app_provider.dart';
import 'package:provider/provider.dart';

import 'pages.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Меню')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildMenuButton(
                text: 'Пройти тест',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainPage(),
                    ),
                  );
                },
              ),
              SizedBox(height: 15),
              _buildMenuButton(
                text: 'Результаты',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResultListPage()),
                  );
                },
              ),
              SizedBox(height: 45),
              _buildMenuButton(
                text: 'Сохранить и выйти',
                onPressed: () async {
                  await Provider.of<AppProvider>(context, listen: false)
                      .saveSavedResultList();
                  Platform.isAndroid ? SystemNavigator.pop() : exit(0);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton _buildMenuButton({
    @required String text,
    @required Function onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        child: Text(
          text,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
