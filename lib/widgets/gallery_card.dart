import 'package:flutter/material.dart';
import 'package:galery_app/data/gallery_data.dart';
import 'package:galery_app/screens/detail_screen.dart';

class GalleryCard extends StatelessWidget {
  /* final String imageUrl;
  final String imageText; */
  final GalleryItem item;
  const GalleryCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                DetailScreen(item: item),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return child;
                },
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 4,
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.asset(
                item.imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                item.imageTitle,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
