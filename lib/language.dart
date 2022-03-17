import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class language extends StatelessWidget {
  final ZoomDrawerController;
  language(this.ZoomDrawerController);
  @override
  Widget build(BuildContext context) {
    print(ZoomDrawerController);
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
                    context.locale = Locale("en");
                  },
                  child: Text('English'),
                ),
                RaisedButton(
                  onPressed: () {
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
