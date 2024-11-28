import 'package:flutter/material.dart';
import 'package:mapstudio/app/widgets/main_bottom_navigation_bar.dart';
import 'package:mapstudio/app/widgets/splash_screen/splash_screen_dot_indicators.dart';
import 'package:mapstudio/app/widgets/splash_screen/splash_screen_page_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
          color: Colors.blue[50],
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              // Align(
              //     alignment: Alignment.topCenter,
              //     child: SizedBox(
              //       height: size.height * .53,
              //       child: PageView.builder(
              //         itemCount: demoData.length,
              //         onPageChanged: (value) {
              //           setState(() {
              //             currentPage = value;
              //           });
              //         },
              //         itemBuilder: (context, index) => LoginScreenPageView(
              //           illustration: demoData[index]["illustration"],
              //           title: demoData[index]["title"],
              //           text: demoData[index]["text"],
              //         ),
              //       ),
              //     )),
              // const Align(
              //   alignment: Alignment.topCenter,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Image(
              //           image: AssetImage("lib/common/image/main_logo.png"),
              //           height: 80),
              //       Text("data")
              //     ],
              //   ),
              // ),
              Positioned(
                  top: size.height * .15,
                  left: 0,
                  right: 0,
                  bottom: size.height * .23,
                  child: PageView.builder(
                    itemCount: demoData.length,
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemBuilder: (context, index) => SplashScreenPageView(
                      illustration: demoData[index]["illustration"],
                      title: demoData[index]["title"],
                      text: demoData[index]["text"],
                    ),
                  )),
              Positioned(
                  bottom: size.height * .14,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      demoData.length,
                      (index) => SplashScreenDotIndicators(
                          isActive: index == currentPage),
                    ),
                  )),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8.0, bottom: 15.0),
                    child: SizedBox(
                      width: size.width, // Set the desired width
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          // Your action here
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const MainBottomNavigationBar()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[300],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0))),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ))
            ],
          )),
    );
  }
}

List<Map<String, dynamic>> demoData = [
  {
    "illustration": "lib/common/image/leak.png",
    "title": "Leakages",
    "text": "Report water leakages instantly and \nhelp conserve water",
  },
  {
    "illustration": "lib/common/image/water_meter.png",
    "title": "Meter Concerns",
    "text": "Report water meter concerns instantly with our app",
  },
  {
    "illustration": "lib/common/image/resume.png",
    "title": "New Service Application",
    "text": "Apply for new water connections easily with our app",
  },
];
