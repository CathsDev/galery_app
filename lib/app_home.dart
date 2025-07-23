import 'package:flutter/material.dart';
import 'package:galery_app/screens/gallery_screen.dart';
//import 'package:galery_app/screens/detail_screen.dart';
// import 'package:galery_app/screens/profile_screen.dart';
import 'package:galery_app/widgets/gallery_app_bar.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //appBar: GalleryAppbar(title: 'Details'),
        // appBar: GalleryAppbar(title: 'MyGallery'),
        appBar: GalleryAppbar(title: 'MyGallery'),
        body: GalleryScreen(),
        bottomNavigationBar: NavigationBar(
          /* onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          }, */
          indicatorColor: const Color.fromARGB(255, 240, 203, 221),
          //selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(Icons.image),
              icon: Icon(Icons.image_outlined),
              label: 'Bilder',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.person),
              icon: Icon(Icons.person_outline),
              label: 'Über mich',
            ),
          ],
        ),
      ),
    );
  }
}
