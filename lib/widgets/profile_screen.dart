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
  final List<Marker> _markers = <Marker>[];

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
    final LatLng position = LatLng(_currentLocation.latitude as double,
        _currentLocation.longitude as double);
    final Marker marker = Marker(
        markerId: const MarkerId("1"),
        position: position,
        infoWindow: const InfoWindow(
            title: "This is the current location of the user."));

    if (_mapController != null && _currentLocation != null) {
      final cameraPosition = CameraPosition(zoom: 14, target: position);
      _mapController
          .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
      _markers.add(marker);
      setState(() {});
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
            mapType: MapType.satellite,
            markers: Set<Marker>.of(_markers),
            onMapCreated: (controller) {
              _mapController = controller;
            },
            initialCameraPosition:
                CameraPosition(zoom: 10, target: LatLng(28.64, 77.2))));
  }
}
