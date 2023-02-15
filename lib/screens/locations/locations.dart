import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tourism_app/screens/location_detail/image_banner.dart';
import '../../app.dart';
import '../../models/location.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // NOTE: we'll be moving this to a scoped_model later
    final locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Locations'),
      ),
      body: ListView(
        children: locations
            .map((location) => GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.30,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(location.imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width,
                      height: 65,
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        location.name,
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  onTap: () => _onLocationTap(context, location.id),
                ))
            .toList(),
      ),
    );
  }

  _onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, LocationDetailRoute,
        arguments: {"id": locationID});
  }
}
