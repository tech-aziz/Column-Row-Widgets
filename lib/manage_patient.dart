import 'package:flutter/material.dart';
class Manage_Patient extends StatefulWidget {
  const Manage_Patient({Key? key}) : super(key: key);

  @override
  State<Manage_Patient> createState() => _Manage_PatientState();
}
// রোগীদের ম্যানেজ করুন
class _Manage_PatientState extends State<Manage_Patient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Container(
              height: 90,
              width: 90,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white10, width: 1),
                shape: BoxShape.circle,
                color: Colors.green,
                // borderRadius: BorderRadius.all(Radius.circular(22)),
              ),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> listView()));
                  },
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ))),
        ),
        title: Text(
          'রোগীদের ম্যানেজ করুন',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              wordSpacing: 2,
              fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
