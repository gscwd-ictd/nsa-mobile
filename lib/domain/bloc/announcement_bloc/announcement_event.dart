part of 'announcement_bloc.dart';

@immutable
sealed class AnnouncementEvent {}

class TabChange extends AnnouncementEvent {
  final int tabIndex;

  TabChange({required this.tabIndex});
}
