part of 'new_service_application_bloc.dart';

@immutable
// ignore: must_be_immutable
sealed class NewServiceApplicationState {
  bool? isCurrentLocation;
  double? currentLocationButtonHeight;
  NewServiceApplicationState(
      {this.isCurrentLocation, this.currentLocationButtonHeight});
  // {this.currentLocationButtonHeight});
}

// ignore: must_be_immutable
final class NewServiceApplicationInitial extends NewServiceApplicationState {
  NewServiceApplicationInitial(
      {super.isCurrentLocation, super.currentLocationButtonHeight});
}

// ignore: must_be_immutable
final class SlideUpPanelState extends NewServiceApplicationState {
  SlideUpPanelState(
      {super.currentLocationButtonHeight, super.isCurrentLocation});
}

// ignore: must_be_immutable
final class CurrentLocationClickedState extends NewServiceApplicationState {
  CurrentLocationClickedState(
      {super.currentLocationButtonHeight, super.isCurrentLocation});
}
