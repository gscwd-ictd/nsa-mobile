import 'package:flutter/material.dart';
import 'package:mapstudio/app/widgets/top_carousel.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(children: [
      const TopCarousel(),
      SingleChildScrollView(
          child: SizedBox(
              // color: Colors.blue[100],
              width: size.width,
              // decoration: const BoxDecoration(
              //   image: DecorationImage(
              //     opacity: 0.1,
              //     fit: BoxFit.fitWidth,
              //     alignment: Alignment.bottomRight,
              //     image: AssetImage(
              //       "lib/common/image/main_logo.png",
              //     ),
              //   ),
              // ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  width: size.width,
                  // color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                          leading: Icon(
                            Icons.map_outlined,
                            color: Colors.blue[300],
                            size: 35,
                          ),
                          title: const Text(
                            "Address",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          subtitle: const Text(
                              "E. Fernandez St., Brgy. Lagao, General Santos City")),
                      ListTile(
                          leading: Icon(
                            Icons.fax_outlined,
                            color: Colors.blue[300],
                            size: 35,
                          ),
                          title: const Text(
                            "Tel No.",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          subtitle: const Text("(083) 552-3824")),
                      ListTile(
                          leading: Icon(
                            Icons.local_phone_outlined,
                            color: Colors.blue[300],
                            size: 35,
                          ),
                          title: const Text(
                            "Mobile No.",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          subtitle: const Text("09985307893")),
                      ListTile(
                          leading: Icon(
                            Icons.web,
                            color: Colors.blue[300],
                            size: 35,
                          ),
                          title: const Text(
                            "Website",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          subtitle: const Text("gensanwater.gov.ph")),
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "Follow us",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.facebook_outlined,
                                  size: 40,
                                )),
                          ],
                        ),
                      )
                      // ListTile(
                      //     // leading: Icon(
                      //     //   Icons.web,
                      //     //   color: Colors.blue[300],
                      //     //   size: 35,
                      //     // ),
                      //     title: const Text(
                      //       "Follow us",
                      //       style: TextStyle(fontWeight: FontWeight.w500),
                      //     ),
                      //     subtitle: const Text("gensanwater.gov.ph")),
                      // Text("Mobile No."),
                      // Text("09985307893"),
                      // SizedBox(height: 20),
                      // Text("Website"),
                      // Text("gensanwater.gov.ph"),
                      // SizedBox(height: 20),
                    ],
                  ),
                ),
              )))
    ]);
  }
}
