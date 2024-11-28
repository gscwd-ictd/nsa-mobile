import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
part 'announcement_event.dart';
part 'announcement_state.dart';

class AnnouncementBloc extends Bloc<AnnouncementEvent, AnnouncementState> {
  AnnouncementBloc() : super(const AnnouncementInitial(tabIndex: 0)) {
    on<TabChange>(
      (event, emit) {
        emit(AnnouncementInitial(tabIndex: event.tabIndex));
      },
    );
  }
}
