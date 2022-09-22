import 'package:flutter/material.dart';

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
                onPressed: () {},
              ),
              SizedBox(height: 15),
              _buildMenuButton(
                text: 'Результаты',
                onPressed: () {},
              ),
              SizedBox(height: 45),
              _buildMenuButton(
                text: 'Сохранить и выйти',
                onPressed: () async {},
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
