import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ThemeSelectionPage.dart'; // Import the ThemeSelectionPage

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Use Navigator to push the ThemeSelectionPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThemeSelectionPage()),
                );
              },
              child: Text('Toggle Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
