import 'package:flutter/material.dart';

class TopCarousel extends StatelessWidget {
  const TopCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.33,
        width: size.width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          // color: primaryColor,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              "lib/common/image/water_access.jpg",
            ),
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: size.height * 0.09,
              child: const Text(
                "Safe Water.... Our Thrust, Our Service, Our Commitment",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Positioned(
              bottom: size.height * 0.045,
              child: const Text(
                "General Santos City",
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w300),
              ),
            ),
            const Positioned(
              bottom: 5,
              child: Text(
                "Water District",
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    letterSpacing: 6,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ));
  }
}
