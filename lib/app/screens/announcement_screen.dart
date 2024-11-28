import 'package:flutter/material.dart';
import 'package:mapstudio/app/widgets/top_carousel.dart';

class AnnouncementScreen extends StatelessWidget {
  const AnnouncementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const TopCarousel(),
      SizedBox(
          height: 40,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: OutlinedButton(
                      onPressed: () {}, child: const Text("All"))),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: OutlinedButton(
                    onPressed: () {}, child: const Text("Water Advisory")),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: OutlinedButton(
                    onPressed: () {}, child: const Text("Payment Centers")),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: OutlinedButton(
                    onPressed: () {}, child: const Text("Bill Advisory")),
              ),
            ],
          )),
      const SizedBox(
        height: 10,
      ),
      Expanded(
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 250,
              color: Colors.amber[600],
              child: const Center(child: Text('Entry A')),
            ),
            Container(
              height: 250,
              color: Colors.amber[500],
              child: const Center(child: Text('Entry B')),
            ),
            Container(
              height: 250,
              color: Colors.amber[100],
              child: const Center(child: Text('Entry C')),
            ),
          ],
        ),
      )
    ]);
  }
}
