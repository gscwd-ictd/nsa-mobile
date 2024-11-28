part of 'new_service_application_bloc.dart';

@immutable
sealed class NewServiceApplicationEvent {}

class CurrentLocationClicked extends NewServiceApplicationEvent {
  final bool isCurrentLocation;
  final double currentLocationButtonHeight;
  CurrentLocationClicked(
      {required this.isCurrentLocation,
      required this.currentLocationButtonHeight});
}

class SlideUpPanel extends NewServiceApplicationEvent {
  final bool isCurrentLocation;
  final double currentLocationButtonHeight;
  SlideUpPanel(
      {required this.isCurrentLocation,
      required this.currentLocationButtonHeight});
}
