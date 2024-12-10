import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsScreen extends StatefulWidget {
  @override
  _MapsScreenState createState() => _MapsScreenState();
}

class _MapsScreenState extends State<MapsScreen> {
  static final LatLng _kMapCenter = LatLng(-7.421, 109.233); // Lokasi di Purwokerto
  static final CameraPosition _kInitialPosition = CameraPosition(
    target: _kMapCenter,
    zoom: 14.0,
  );

  final List<Map<String, dynamic>> _locations = [
    {
      "name": "Stasiun Purwokerto",
      "position": LatLng(-7.421, 109.242),
      "address": "Jl. Stasiun Purwokerto, Purwokerto, Jawa Tengah",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peta Purwokerto'),
      ),
      body: GoogleMap(
        initialCameraPosition: _kInitialPosition,
        markers: _buildMarkers(),
        onTap: (LatLng position) {
          _onMapTapped(position);
        },
      ),
    );
  }

  Set<Marker> _buildMarkers() {
    return _locations.map((location) {
      return Marker(
        markerId: MarkerId(location["name"]),
        position: location["position"],
        infoWindow: InfoWindow(
          title: location["name"],
          snippet: location["address"],
        ),
        onTap: () => _showLocationDetails(location),
      );
    }).toSet();
  }

  void _onMapTapped(LatLng position) {
    // Tambahkan logika jika perlu untuk menangani tap di luar marker
    print("Peta diklik di: $position");
  }

  void _showLocationDetails(Map<String, dynamic> location) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // This allows the modal to be taller than default
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.5, // Start at 50% of screen height
          minChildSize: 0.2, // Minimum height (20% of screen)
          maxChildSize: 0.8, // Maximum height (80% of screen)
          expand: false,
          builder: (context, scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        width: 40,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(2.5),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      location["name"],
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Address:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      location["address"],
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Coordinates:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Latitude: ${location["position"].latitude.toStringAsFixed(6)}',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Longitude: ${location["position"].longitude.toStringAsFixed(6)}',
                      style: TextStyle(fontSize: 16),
                    ),
                    // Add more details or actions here
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
