import 'package:flutter/material.dart';

import 'manage_patient_en.dart';
class TestOrderEn extends StatefulWidget {
  const TestOrderEn({Key? key}) : super(key: key);

  @override
  State<TestOrderEn> createState() => _TestOrderEnState();
}

class _TestOrderEnState extends State<TestOrderEn> {
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
          'Order Test From Home',
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