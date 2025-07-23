import 'package:flutter/material.dart';
import 'package:galery_app/screens/gallery_screen.dart';
import 'package:galery_app/screens/profile_screen.dart';
import 'package:galery_app/widgets/gallery_app_bar.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int currentPageIndex = 0;
  final List<Widget> screens = [GalleryScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: GalleryAppbar(title: 'MyGallery'),
        body: screens[currentPageIndex],
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          indicatorColor: const Color.fromARGB(255, 240, 203, 221),
          selectedIndex: currentPageIndex,
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
