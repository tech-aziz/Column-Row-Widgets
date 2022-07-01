import 'package:flutter/material.dart';
import 'package:listview/screens/bangla_section/change_password_bd.dart';
import 'package:listview/screens/bangla_section/communication_bd.dart';
import 'package:listview/screens/bangla_section/conditions_bd.dart';
import 'package:listview/screens/bangla_section/details_payment_history_bd.dart';
import 'package:listview/screens/bangla_section/general_ask_question_bd.dart';
import 'package:listview/screens/bangla_section/know_about_doctime_bd.dart';
import 'package:listview/screens/bangla_section/list_of_favourite_doctors_bd.dart';
import 'package:listview/screens/bangla_section/manage_patient_bd.dart';
import 'package:listview/screens/bangla_section/medicine_reminder_bd.dart';
import 'package:listview/screens/bangla_section/my_profile_bd.dart';
import 'package:listview/screens/bangla_section/privacy_policy_bd.dart';
import 'package:listview/screens/bangla_section/privacy_policy_of_money_transection_bd.dart';
import 'package:listview/screens/bangla_section/test_order_home_bd.dart';
import 'package:listview/screens/bangla_section/test_report_bd.dart';
import 'package:listview/screens/english_section/home_screen_en.dart';


class listView extends StatefulWidget {
  const listView({Key? key}) : super(key: key);

  @override
  State<listView> createState() => _listViewState();
}

class _listViewState extends State<listView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Container(
              height: 90,
              width: 90,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white10, width: 2),
                shape: BoxShape.circle,
                color: Colors.green,
                // borderRadius: BorderRadius.all(Radius.circular(22)),
              ),
              child: Text('A',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                  )),
            ),
          ),
          title: Text(
            'Azizul Hakim\nপ্রোফাইল পরিবর্তন করুন',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                wordSpacing: 2,
                fontWeight: FontWeight.normal),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.green,
                size: 20,
              ),
            )
          ],
        ),
        body: Container(
            color: Colors.white24,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'আপনার অ্যাকাউন্ট',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> MyProfile()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('আপনার প্রোফাইল',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18)),
                                Icon(
                                  Icons.person,
                                  size: 25,
                                  color: Colors.green,
                                ),
                              ],
                            ),
                          ),
                          Divider(
                              color: Colors.black, height: 36, thickness: .09),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> ChangePassword()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('পাসওয়ার্ড পরিবর্তন করুন',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18)),
                                Icon(
                                  Icons.security_outlined,
                                  size: 25,
                                  color: Colors.green,
                                ),
                              ],
                            ),
                          ),
                          Divider(
                              color: Colors.black, height: 36, thickness: .05),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Manage_Patient()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('রোগীদের ম্যানেজ করুন',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18)),
                                Icon(
                                  Icons.person_add_alt,
                                  size: 25,
                                  color: Colors.green,
                                ),
                              ],
                            ),
                          ),
                          Divider(
                              color: Colors.black, height: 36, thickness: .05),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>FavouriteDoctor()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('প্রিয় ডাক্তারগুলোর তালিকা',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18)),
                                Icon(
                                  Icons.heart_broken_sharp,
                                  size: 25,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                          ),
                          Divider(
                              color: Colors.black, height: 36, thickness: .05),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Home_Page()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('ভাষা পরিবর্তন করুন',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18)),
                                Icon(
                                  Icons.language_rounded,
                                  size: 25,
                                  color: Colors.green,
                                ),
                              ],
                            ),
                          ),
                          Divider(
                              color: Colors.black, height: 36, thickness: .05),
                        ],
                      ),
                    ),

                    // Payment option
                    Text(
                      'পেমেন্ট',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentHistory()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('অর্থ প্রধানের বিবরন',
                                style:
                                    TextStyle(color: Colors.black, fontSize: 18)),
                            Icon(
                              Icons.money,
                              size: 25,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ),

                    Divider(color: Colors.black, height: 36, thickness: .05),

                    //ওষুধ

                    Text(
                      'ওষুধ',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MedicineReminder()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('মেডিসিন রিমাইন্ডার',
                                style:
                                    TextStyle(color: Colors.black, fontSize: 18)),
                            Icon(
                              Icons.notifications_active_outlined,
                              size: 25,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ),

                    //Diagonistic
                    Divider(color: Colors.black, height: 36, thickness: .05),

                    //ওষুধ

                    Text(
                      'ডায়াগনস্টিক',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>TestOrder()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('ঘরে বসেই টেস্ট অর্ডার করুন',
                                style:
                                    TextStyle(color: Colors.black, fontSize: 18)),
                            Icon(
                              Icons.personal_injury_sharp,
                              size: 25,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ),

                    Divider(color: Colors.black, height: 36, thickness: .05),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>TestReport()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('টেস্ট রিপোর্ট',
                                style:
                                    TextStyle(color: Colors.black, fontSize: 18)),
                            Icon(
                              Icons.book_outlined,
                              size: 25,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(color: Colors.black, height: 36, thickness: .05),

                    Text(
                      'আইনি এবং সমর্থন',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Conditions()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('শর্তাবলি',
                                style:
                                    TextStyle(color: Colors.black, fontSize: 18)),
                            Icon(
                              Icons.book_outlined,
                              size: 25,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(color: Colors.black, height: 36, thickness: .05),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>PrivacyPolicy()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('গোপনীয়তা নীতি',
                                style:
                                    TextStyle(color: Colors.black, fontSize: 18)),
                            Icon(
                              Icons.key,
                              size: 25,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ),

                    Divider(color: Colors.black, height: 36, thickness: .05),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MoneyTransection()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('অর্থ লেনদেনের শর্তাবলি',
                                style:
                                    TextStyle(color: Colors.black, fontSize: 18)),
                            Icon(
                              Icons.monetization_on_outlined,
                              size: 25,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(color: Colors.black, height: 36, thickness: .05),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>GeneralQuestion()));
                        },
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>GeneralQuestion()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('সচারচর জিজ্ঞাসাসমূহ',
                                  style:
                                      TextStyle(color: Colors.black, fontSize: 18)),
                              Icon(
                                Icons.question_mark_sharp,
                                size: 25,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Divider(color: Colors.black, height: 36, thickness: .05),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutDocTime()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('ডক্টাইম সম্পর্কে জানুন',
                                style:
                                    TextStyle(color: Colors.black, fontSize: 18)),
                            Icon(
                              Icons.question_answer_rounded,
                              size: 25,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ),

                    Divider(color: Colors.black, height: 36, thickness: .05),

                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Communication_dart()));
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('যোগাযোগ',
                                style:
                                    TextStyle(color: Colors.black, fontSize: 18)),
                            Icon(
                              Icons.email_outlined,
                              size: 25,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(color: Colors.black, height: 36, thickness: .05),
                    Center(
                      child: Text(
                        'Version 0.1',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ),

                    //
                  ],
                ),
              ),
            )));
  }
}
