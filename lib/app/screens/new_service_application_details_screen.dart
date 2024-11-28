import 'package:flutter/material.dart';
import 'package:mapstudio/app/screens/new_service_application_details_photo_screen.dart';

class NewServiceApplicationDetailsScreen extends StatefulWidget {
  const NewServiceApplicationDetailsScreen({super.key});

  @override
  State<NewServiceApplicationDetailsScreen> createState() =>
      _NewServiceApplicationDetailsScreenState();
}

class _NewServiceApplicationDetailsScreenState
    extends State<NewServiceApplicationDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "New Service Application",
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromARGB(255, 230, 234, 236),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "First Name",
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    hintText: 'First Name',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.grey[500]),
                    filled: true,
                    isDense: true,
                    fillColor: Colors.white),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Middle Name"),
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    hintText: 'Middle Name',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.grey[500]),
                    filled: true,
                    isDense: true,
                    fillColor: Colors.white),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Last Name"),
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    hintText: 'Last Name',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.grey[500]),
                    filled: true,
                    isDense: true,
                    fillColor: Colors.white),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Birthdate"),
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    hintText: 'Birthdate',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.grey[500]),
                    filled: true,
                    isDense: true,
                    fillColor: Colors.white),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Spouse/Authorized Representative"),
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    hintText: 'Spouse/Authorized Representative',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.grey[500]),
                    filled: true,
                    isDense: true,
                    fillColor: Colors.white),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Address"),
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    hintText: 'Address',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.grey[500]),
                    filled: true,
                    isDense: true,
                    fillColor: Colors.white),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Landline/Mobile No."),
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    hintText: 'Landline/Mobile No.',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.grey[500]),
                    filled: true,
                    isDense: true,
                    fillColor: Colors.white),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Text("Number of Persons in Household")),
                      SizedBox(width: 10.0),
                      Expanded(flex: 1, child: Text("Number of House/s in Lot"))
                    ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          hintText: '0',
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[500]),
                          filled: true,
                          isDense: true,
                          fillColor: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    flex: 1,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          hintText: '0',
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[500]),
                          filled: true,
                          isDense: true,
                          fillColor: Colors.white),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Valid ID"),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const NewServiceApplicationDetailsPhotoScreen()),
                      );
                    },
                    child: const Text(
                      "PROCEED",
                      style: TextStyle(
                          color: Colors.white, fontSize: 18, letterSpacing: 3),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
