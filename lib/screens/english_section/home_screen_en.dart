import 'package:flutter/material.dart';
import 'package:listview/screens/bangla_section/home_screen_bd.dart';
import 'package:listview/screens/bangla_section/communication_bd.dart';
import 'package:listview/screens/english_section/change_password_en.dart';
import 'package:listview/screens/english_section/communication_en.dart';
import 'package:listview/screens/english_section/conditions_en.dart';
import 'package:listview/screens/english_section/details_payment_history_en.dart';
import 'package:listview/screens/english_section/general_ask_question_en.dart';
import 'package:listview/screens/english_section/know_about_doctime_en.dart';
import 'package:listview/screens/english_section/list_of_favourite_doctors_en.dart';
import 'package:listview/screens/english_section/manage_patient_en.dart';
import 'package:listview/screens/english_section/medicine_reminder_en.dart';
import 'package:listview/screens/english_section/my_profile_en.dart';
import 'package:listview/screens/english_section/privacy_policy_en.dart';
import 'package:listview/screens/english_section/privacy_policy_of_money_transection_ed.dart';
import 'package:listview/screens/english_section/test_order_home_en.dart';
import 'package:listview/screens/english_section/test_report_en.dart';

import '../bangla_section/change_password_bd.dart';
import '../bangla_section/manage_patient_bd.dart';
import '../bangla_section/my_profile_bd.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
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
            'Azizul Hakim\nEdit Profile',
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
                      'Your Account',
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
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProfileEn()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('My Profile',
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangePasswordEn()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Change Password',
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ManagePatientEn()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Manage Patients',
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>FavouriteDoctorEn()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Favourite Doctors',
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
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => listView()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Change Language',
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
                      'Payments',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MoneyTransectionEn()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Payment History',
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
                      'Medicine',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MedicineReminderEn()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Medicine Reminders',
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
                      'Diagnostic',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>TestOrderEn()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Order Test From Home',
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>TestReportEn()));
                        },
                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Test Reports',
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
                      'Legals and Suport',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ConditionsEn()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Terms and Conditions',
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>PrivacyPolicyEn()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Privacy Policy',
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentHistoryEn()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Payment Terms',
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>GeneralQuestionEn()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('FAQ',
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

                    Divider(color: Colors.black, height: 36, thickness: .05),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutDocTimeEn()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('About Us',
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
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Communication_dartEn()));
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Contact Us',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18)),
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
