import 'package:flutter/material.dart';

import 'package:programming_language_test/providers/app_provider.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Тест')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child: Consumer<AppProvider>(
              builder: (context, provider, _) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      provider.curQuestion.question,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 25),
                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (_, i) => ElevatedButton(
                        onPressed: () {
                          bool isEnd = provider
                              .selectAnswerById(provider.curAnswerList[i].id);
                          if (isEnd) {}
                        },
                        child: Text(
                          provider.curAnswerList[i].text,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      separatorBuilder: (_, i) => SizedBox(height: 10),
                      itemCount: provider.curAnswerList.length,
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
