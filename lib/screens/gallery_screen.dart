import 'package:flutter/material.dart';
import 'package:galery_app/data/gallery_data.dart';
import 'package:galery_app/widgets/gallery_card.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: galleryData.map((item) {
          return GalleryCard(
            imageUrl: item.imagePath,
            imageText: item.imageTitle,
          );
        }).toList(),
      ),
    );
  }
}
