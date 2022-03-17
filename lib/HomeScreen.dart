import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeScreen extends StatelessWidget {
  final ZoomDrawerController;
  HomeScreen(this.ZoomDrawerController);
  @override
  Widget build(BuildContext context) {
    print(context);
    print('test');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Home page').tr(),
        leading: InkWell(
            onTap: (() => ZoomDrawerController.toggle()),
            child: Icon(Icons.menu)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: () {
                    print(context);
                    print('Flutter');
                    context.locale = Locale("en");
                    print(context);
                  },
                  child: Text('English'),
                ),
                RaisedButton(
                  onPressed: () {
                    print(context);
                    print('final');
                    context.locale = Locale("ta");
                  },
                  child: Text('Tamil'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
