import 'package:flutter/material.dart';

import 'application_appbar.dart';
import "package:google_maps_flutter/google_maps_flutter.dart";
import "package:location/location.dart";

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late LocationData _currentLocation;
  late GoogleMapController _mapController;

  @override
  void initState() {
    super.initState();
    _getLocation();
  }

  Future<void> _getLocation() async {
    final location = Location();

    try {
      final currLocation = await location.getLocation();
      setState(() {
        _currentLocation = currLocation;
      });
      _updateMapLocation();
    } catch (e) {}
  }

  void _updateMapLocation() {

    if(_mapController != null && _currentLocation != null) {
      final cameraPosition = CameraPosition(zoom: 14, target: LatLng(_currentLocation.latitude as double, _currentLocation.longitude as double));
      _mapController.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ApplicationAppBar(
          title: "Profile",
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        body: GoogleMap(
            onMapCreated: (controller) {
              _mapController = controller;
            },
            initialCameraPosition:
                CameraPosition(zoom: 10, target: LatLng(28.64, 77.2))));
  }
}
