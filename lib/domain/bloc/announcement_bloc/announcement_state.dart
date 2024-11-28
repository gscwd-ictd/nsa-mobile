part of 'announcement_bloc.dart';

@immutable
sealed class AnnouncementState {
  final int tabIndex;

  const AnnouncementState({required this.tabIndex});
}

final class AnnouncementInitial extends AnnouncementState {
  const AnnouncementInitial({required super.tabIndex});
}
