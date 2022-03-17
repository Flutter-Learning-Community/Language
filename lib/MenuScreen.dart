import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
          child: Column(
        children: [
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__340.jpg'),
                    maxRadius: 50,
                  ),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 2,
            color: Colors.white24,
          ),
          Padding(
              padding: EdgeInsets.all(20),
              child: InkWell(
                child: Row(children: [
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Home'.tr(),
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ]),
              )),
          Divider(
            thickness: 2,
            color: Colors.white24,
          ),
          Padding(
              padding: EdgeInsets.all(20),
              child: InkWell(
                child: Row(children: [
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'settings'.tr(),
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ]),
              )),
          Divider(
            thickness: 2,
            color: Colors.white24,
          ),
          Padding(
              padding: EdgeInsets.all(20),
              child: InkWell(
                child: Row(children: [
                  Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Profile'.tr(),
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ]),
              )),
          Divider(
            thickness: 2,
            color: Colors.white24,
          ),
          Spacer(),
          Padding(
              padding: EdgeInsets.all(20),
              child: InkWell(
                child: Row(children: [
                  Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Logout'.tr(),
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ]),
              )),
          SizedBox(
            height: 10,
          )
        ],
      )),
    );
  }
}
