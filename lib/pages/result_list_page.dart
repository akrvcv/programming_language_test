import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:programming_language_test/providers/app_provider.dart';

class ResultListPage extends StatelessWidget {
  const ResultListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(builder: (context, provider, _) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Результаты'),
          actions: [
            IconButton(
              icon: Icon(Icons.delete_forever),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Внимание'),
                    content:
                        Text('Вы действительно хотите удалить все результаты?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          provider.removeSavedResultAll();
                          Navigator.pop(context);
                        },
                        child: Text('Да'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('Нет'),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
        body: SafeArea(
          child: provider.savedResultList.isNotEmpty
              ? ListView.separated(
                  itemBuilder: (_, i) => ListTile(
                    title: Text(provider.savedResultList[i].text),
                    subtitle: Text(provider.savedResultList[i].date),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () => provider.removeSavedResultById(
                        provider.savedResultList[i].id,
                      ),
                    ),
                  ),
                  separatorBuilder: (_, __) => SizedBox(height: 5),
                  itemCount: provider.savedResultList.length,
                )
              : Center(child: Text('Список пуст!')),
        ),
      );
    });
  }
}
