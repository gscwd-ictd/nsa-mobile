import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mapstudio/app/screens/new_service_application_details_screen.dart';
import 'package:mapstudio/domain/bloc/new_service_application_bloc/new_service_application_bloc.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

// const List<String> list = <String>['New Connection', 'Additional'];

enum ConnectionType {
  newConnection(1, 'New Connection'),
  additional(2, 'Additional');

  const ConnectionType(this.id, this.label);
  final int id;
  final String label;
}

class NewServiceApplicationScreen extends StatefulWidget {
  const NewServiceApplicationScreen({super.key});

  @override
  State<NewServiceApplicationScreen> createState() =>
      _NewServiceApplicationScreenState();
}

class _NewServiceApplicationScreenState
    extends State<NewServiceApplicationScreen> {
  final double initFabHeight = 70.0;
  double currentLocationButtonHeight = 0;
  double panelHeightOpen = 0;
  double panelHeightClosed = 45.0;
  bool currentLocationClicked = false;

  void getCurrentLocation() async {
    await Geolocator.checkPermission();
    await Geolocator.requestPermission();
    const LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.best,
      distanceFilter: 100,
    );

    Position position =
        await Geolocator.getCurrentPosition(locationSettings: locationSettings);
    print(position);
  }

  @override
  Widget build(BuildContext context) {
    // initState()
    panelHeightOpen = MediaQuery.of(context).size.height * .50;
    final TextEditingController menuController = TextEditingController();
    return BlocConsumer<NewServiceApplicationBloc, NewServiceApplicationState>(
      listener: (context, state) {
        // print(state.currentLocationButtonHeight);
      },
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              SlidingUpPanel(
                panel: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 20),
                          child: Center(
                            child: Container(
                              width: 50,
                              height: 5,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(12.0))),
                            ),
                          ),
                        ),
                        const Text("Landmark",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              hintText: 'Landmark',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey[500]),
                              filled: true,
                              isDense: true,
                              fillColor: Colors.grey[100]),
                        ),
                        const SizedBox(height: 5),
                        const Text("Neighbors",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              hintText: 'Neighbors',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey[500]),
                              filled: true,
                              isDense: true,
                              fillColor: Colors.grey[100]),
                        ),
                        const SizedBox(height: 5),
                        const Text("Remarks",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                        TextField(
                          maxLines: 2,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              hintText: 'Remarks',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey[500]),
                              filled: true,
                              isDense: true,
                              fillColor: Colors.grey[100]),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const NewServiceApplicationDetailsScreen()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16))),
                                child: const Text(
                                  "CONFIRM",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      letterSpacing: 3),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                maxHeight: panelHeightOpen,
                minHeight: panelHeightClosed,
                parallaxEnabled: true,
                parallaxOffset: .5,
                body: FlutterMap(
                  options: const MapOptions(
                      initialCenter: LatLng(6.116243, 125.171738),
                      // center: LatLng(51.509364, -0.128928),
                      // minZoom: 3.2,
                      initialZoom: 12),
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      userAgentPackageName: 'com.example.app',
                    ),
                    if (state.isCurrentLocation!) CurrentLocationLayer(),
                  ],
                ),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(18.0),
                    topRight: Radius.circular(18.0)),
                onPanelSlide: (position) {
                  BlocProvider.of<NewServiceApplicationBloc>(context).add(
                      SlideUpPanel(
                          isCurrentLocation: state.isCurrentLocation!,
                          currentLocationButtonHeight:
                              position * (panelHeightOpen - panelHeightClosed) +
                                  initFabHeight));
                },
              ),
              Positioned(
                bottom: state.currentLocationButtonHeight,
                right: 5,
                child: FloatingActionButton(
                  onPressed: () {
                    if (!state.isCurrentLocation!) {
                      currentLocationClicked = true;
                    } else {
                      currentLocationClicked = false;
                    }
                    BlocProvider.of<NewServiceApplicationBloc>(context).add(
                        CurrentLocationClicked(
                            isCurrentLocation: currentLocationClicked,
                            currentLocationButtonHeight:
                                state.currentLocationButtonHeight!));
                  },
                  backgroundColor: Colors.white,
                  splashColor: Colors.blue,
                  child: const Icon(
                    Icons.my_location_rounded,
                    size: 35,
                    color: Colors.blue,
                  ),
                ),
              ),
              Positioned(
                  top: 45.0,
                  left: 15,
                  right: 15,
                  child: DropdownMenu<ConnectionType>(
                    width: 350,
                    // initialSelection: 'New Connection',
                    controller: menuController,
                    label: const Text('Select Type',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                    inputDecorationTheme: const InputDecorationTheme(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          // width: 0.0 produces a thin "hairline" border
                          borderSide:
                              BorderSide(color: Colors.white, width: 0.0),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                    ),
                    onSelected: (ConnectionType? menu) {
                      setState(() {
                        // selectedMenu = menu;
                      });
                    },
                    dropdownMenuEntries: ConnectionType.values
                        .map<DropdownMenuEntry<ConnectionType>>(
                      (ConnectionType type) {
                        return DropdownMenuEntry<ConnectionType>(
                          value: type,
                          label: type.label,
                        );
                      },
                    ).toList(),
                  )),
            ],
          ),
        );
      },
    );
  }
}
