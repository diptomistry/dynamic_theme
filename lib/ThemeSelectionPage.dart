import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ColorDisplayPage.dart';
import 'main.dart';

enum ThemeOption { red, green, blue, purple, orange, pink, teal, yellow, brown, grey }


class ThemeSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a Color Theme'),
      ),
      body: ThemeSelectionBody(),
    );
  }
}

class ThemeSelectionBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ThemeOptionTile(
          themeColor: Colors.red,
          themeName: 'Red Theme',
          option: ThemeOption.red, colorName: 'Red',
        ),
        ThemeOptionTile(
          themeColor: Colors.green,
          themeName: 'Green Theme',
          option: ThemeOption.green, colorName: 'Green',
        ),
        ThemeOptionTile(
          themeColor: Colors.blue,
          themeName: 'Blue Theme',
          option: ThemeOption.blue, colorName: 'Blue',
        ),
        ThemeOptionTile(
          themeColor: Colors.purple,
          themeName: 'Purple Theme',
          option: ThemeOption.purple, colorName: 'Purple',
        ),
        ThemeOptionTile(
          themeColor: Colors.orange,
          themeName: 'Orange Theme',
          option: ThemeOption.orange, colorName: 'Orange',
        ),
        ThemeOptionTile(
          themeColor: Colors.pink,
          themeName: 'Pink Theme',
          option: ThemeOption.pink, colorName: 'Pink',
        ),
        ThemeOptionTile(
          themeColor: Colors.teal,
          themeName: 'Teal Theme',
          option: ThemeOption.teal,
          colorName: 'Teal',
        ),
        ThemeOptionTile(
          themeColor: Colors.yellow,
          themeName: 'Yellow Theme',
          option: ThemeOption.yellow,
          colorName: 'Yellow',
        ),
        ThemeOptionTile(
          themeColor: Colors.brown,
          themeName: 'Brown Theme',
          option: ThemeOption.brown,
          colorName: 'Brown',
        ),
        ThemeOptionTile(
          themeColor: Colors.grey,
          themeName: 'Grey Theme',
          option: ThemeOption.grey,
          colorName: 'Grey',
        ),

      ],
    );
  }
}

class ThemeOptionTile extends StatelessWidget {
  final Color themeColor;
  final String themeName;
  final ThemeOption option;
  final String colorName; // Add colorName to the constructor

  ThemeOptionTile({
    required this.themeColor,
    required this.themeName,
    required this.option,
    required this.colorName,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        color: themeColor,
      ),
      title: Text(themeName),
      onTap: () {
        final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
        themeProvider.setTheme(option);

        // Pass the colorName when navigating to ColorDisplayPage
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ColorDisplayPage(
              color: themeColor,
              colorName: colorName,
            ),
          ),
        );
      },
    );
  }
}
