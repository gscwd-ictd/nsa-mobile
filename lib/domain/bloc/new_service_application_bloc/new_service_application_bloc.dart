import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'new_service_application_event.dart';
part 'new_service_application_state.dart';

class NewServiceApplicationBloc
    extends Bloc<NewServiceApplicationEvent, NewServiceApplicationState> {
  NewServiceApplicationBloc()
      : super(NewServiceApplicationInitial(
            isCurrentLocation: false, currentLocationButtonHeight: 70)) {
    on<NewServiceApplicationEvent>((event, emit) {
      if (event is CurrentLocationClicked) {
        emit(CurrentLocationClickedState(
            isCurrentLocation: event.isCurrentLocation,
            currentLocationButtonHeight: event.currentLocationButtonHeight));
      }

      if (event is SlideUpPanel) {
        emit(SlideUpPanelState(
            currentLocationButtonHeight: event.currentLocationButtonHeight,
            isCurrentLocation: event.isCurrentLocation));
      }
    });
  }
}
