import 'package:flutter/material.dart';
import 'package:galery_app/data/gallery_data.dart';
import 'package:galery_app/widgets/gallery_app_bar.dart';

class DetailScreen extends StatelessWidget {
  final GalleryItem item;
  const DetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GalleryAppbar(title: 'Details'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              item.imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24.0),
                  Text(item.imageTitle, style: TextStyle(fontSize: 40.0)),
                  Text(
                    item.imageDate,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(item.imageDescription, style: TextStyle(fontSize: 20.0)),
                  const SizedBox(height: 24.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
