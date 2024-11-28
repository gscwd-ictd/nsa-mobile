import 'package:flutter/material.dart';
import 'package:mapstudio/app/screens/announcement_screen.dart';
import 'package:mapstudio/app/screens/contact_us_screen.dart';
import 'package:mapstudio/app/screens/home_screen.dart';
import 'package:mapstudio/domain/bloc/home_bloc/home_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainBottomNavigationBar extends StatefulWidget {
  const MainBottomNavigationBar({super.key});

  @override
  State<MainBottomNavigationBar> createState() =>
      _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {
  static const List<Widget> _widgetOptions = [
    HomeScreen(),
    AnnouncementScreen(),
    ContactUsScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
            // appBar: AppBar(automaticallyImplyLeading: false),
            body: _widgetOptions.elementAt(state.tabIndex),
            bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.newspaper),
                  label: 'Announcements',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.call),
                  label: 'Contact',
                ),
              ],
              currentIndex: state.tabIndex,
              selectedItemColor: Colors.blue[300],
              onTap: (index) {
                BlocProvider.of<HomeBloc>(context)
                    .add(TabChange(tabIndex: index));
              },
            ));
      },
    );
  }
}
