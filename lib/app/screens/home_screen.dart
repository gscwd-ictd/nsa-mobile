import 'package:flutter/material.dart';
import 'package:mapstudio/app/screens/new_service_application_screen.dart';
// import 'package:mapstudio/app/widgets/splash_screen/splash_screen_dot_indicators.dart';
import 'package:mapstudio/app/widgets/top_carousel.dart';

// final List<String> imgList = ['wd.jpg', 'water_access.jpg'];

// final List<Widget> imageSliders = imgList
//     .map((item) => Container(
//           margin: const EdgeInsets.all(5.0),
//           child: ClipRRect(
//               borderRadius: const BorderRadius.all(Radius.circular(5.0)),
//               child: Stack(
//                 children: <Widget>[
//                   Image.network(item, fit: BoxFit.cover, width: 1000.0),
//                   Positioned(
//                     bottom: 0.0,
//                     left: 0.0,
//                     right: 0.0,
//                     child: Container(
//                       decoration: const BoxDecoration(
//                         gradient: LinearGradient(
//                           colors: [
//                             Color.fromARGB(200, 0, 0, 0),
//                             Color.fromARGB(0, 0, 0, 0)
//                           ],
//                           begin: Alignment.bottomCenter,
//                           end: Alignment.topCenter,
//                         ),
//                       ),
//                       padding: const EdgeInsets.symmetric(
//                           vertical: 10.0, horizontal: 20.0),
//                       child: Text(
//                         'No. ${imgList.indexOf(item)} image',
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 15.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               )),
//         ))
//     .toList();

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TopCarousel(),
        const SizedBox(height: 20),
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 10),
        //   child: Row(children: [
        //     Container(
        //       padding: const EdgeInsets.all(8),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         children: [
        //           CircleAvatar(
        //             maxRadius: 40,
        //             backgroundColor: Colors.blue[300],
        //             child: const Image(
        //                 height: 45,
        //                 image: AssetImage('lib/common/image/control.png')),
        //           ),
        //           Text(
        //             "Bill Inquiry",
        //             style: TextStyle(
        //                 fontSize: 18,
        //                 color: Colors.blue[600],
        //                 fontWeight: FontWeight.w400),
        //           ),
        //         ],
        //       ),
        //     ),
        //     Container(
        //       padding: const EdgeInsets.all(8),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         children: [
        //           CircleAvatar(
        //             maxRadius: 40,
        //             backgroundColor: Colors.blue[300],
        //             child: const Image(
        //                 height: 50,
        //                 image: AssetImage('lib/common/image/water_bill.png')),
        //           ),
        //           Text(
        //             "Payment",
        //             style: TextStyle(
        //                 fontSize: 18,
        //                 color: Colors.blue[600],
        //                 fontWeight: FontWeight.w400),
        //           ),
        //         ],
        //       ),
        //     ),
        //     // Expanded(
        //     //   child: Card.outlined(
        //     //     shadowColor: Colors.blue,
        //     //     elevation: 1,
        //     //     child: SizedBox(
        //     //       height: 120,
        //     //       child: Container(
        //     //         padding: EdgeInsets.all(8),
        //     //         child: Column(
        //     //           crossAxisAlignment: CrossAxisAlignment.start,
        //     //           children: [
        //     //             CircleAvatar(
        //     //               maxRadius: 40,
        //     //               backgroundColor: Colors.blue[50],
        //     //               child: const Image(
        //     //                   height: 45,
        //     //                   image:
        //     //                       AssetImage('lib/common/image/control.png')),
        //     //             ),
        //     //             Text(
        //     //               "Bill Inquiry",
        //     //               style:
        //     //                   TextStyle(fontSize: 14, color: Colors.blue[600]),
        //     //             ),
        //     //             // const Text(
        //     //             //   "Check your bill history.",
        //     //             //   style: TextStyle(fontSize: 14, color: Colors.black45),
        //     //             // )
        //     //           ],
        //     //         ),
        //     //       ),
        //     //     ),
        //     //   ),
        //     // ),
        //     // Expanded(
        //     //   child: Card.outlined(
        //     //     // color: Colors.blue[200],
        //     //     elevation: 2,
        //     //     child: SizedBox(
        //     //       height: 120,
        //     //       child: Container(
        //     //         padding: const EdgeInsets.all(8),
        //     //         child: Column(
        //     //           crossAxisAlignment: CrossAxisAlignment.start,
        //     //           children: [
        //     //             const CircleAvatar(
        //     //               maxRadius: 30,
        //     //               child: Image(
        //     //                   height: 50,
        //     //                   image:
        //     //                       AssetImage('lib/common/image/control.png')),
        //     //             ),
        //     //             Text(
        //     //               "Payment",
        //     //               style:
        //     //                   TextStyle(fontSize: 14, color: Colors.blue[600]),
        //     //             ),
        //     //             const Text(
        //     //               "Pay thru our application.",
        //     //               style: TextStyle(fontSize: 14, color: Colors.black45),
        //     //             )
        //     //           ],
        //     //         ),
        //     //       ),
        //     //     ),
        //     //   ),
        //     // ),
        //   ]),
        // ),
        // const Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 17),
        //   child: Text(
        //     "Services",
        //     style: TextStyle(fontSize: 22),
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Card.filled(
              color: Colors.blue[300],
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const NewServiceApplicationScreen()),
                  );
                },
                child: const SizedBox(
                  width: 500,
                  height: 80,
                  child: ListTile(
                    leading: CircleAvatar(
                        child: Image(
                            image: AssetImage('lib/common/image/resume.png'))),
                    title: Text(
                      'New Service Application',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Apply for a new service connection.',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              )),
        ),
        // Expanded(
        //   child: ListView.separated(
        //     padding: const EdgeInsets.all(8),
        //     itemBuilder: (BuildContext context, int index) {
        //       return Container(
        //         height: 50,
        //         color: Colors.amber[100],
        //         child: const Center(child: Text('Entry1 ')),
        //       );
        //     },
        //     separatorBuilder: (BuildContext context, int index) =>
        //         const Divider(),
        //     itemCount: 10,
        //   ),
        // )
      ],
    );
  }
}
