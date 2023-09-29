import 'package:flutter/material.dart';

import 'package:transparent_image/transparent_image.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({
    super.key,
    // required this.meals,
    required this.title,
    required this.imageUrl,
  });

  // final List<Meal> meals;

  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Uh oh... Nothing Here!',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: Theme.of(context).colorScheme.onBackground),
          ),
          const SizedBox(height: 16),
          Text(
            'Try selecting a differnet category',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Theme.of(context).colorScheme.onBackground),
          )
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: FadeInImage(
        placeholder: MemoryImage(kTransparentImage),
        image: NetworkImage(imageUrl),
      ),
    );
  }
}
