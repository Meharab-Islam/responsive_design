import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WebAlert extends StatefulWidget {
  const WebAlert({Key? key}) : super(key: key);

  @override
  _WebAlertState createState() => _WebAlertState();
}

class _WebAlertState extends State<WebAlert> {
  Color maximumColor = Color(0xFF4F7C87);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(MediaQuery.of(context).size.width, 1080),
      builder: (() => AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
            title: Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () => Get.back(),
                child: Icon(
                  Icons.clear,
                  color: maximumColor,
                ),
              ),
            ),
            content: SizedBox(
              height: 260,
              width: MediaQuery.of(context).size.width / 1.8,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Container(
                          // color: Colors.red,
                          width: MediaQuery.of(context).size.width / 3.2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Download the best\n100 question',
                                style: TextStyle(
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.w600,
                                    color: maximumColor),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "We'd love to send you an E-Book of the 100 top questions you can ask your loved ones to get to know them better.",
                                style: TextStyle(
                                    fontSize: 12.sp, color: maximumColor),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 35,
                                child: TextField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor:
                                          Color.fromARGB(255, 218, 216, 216),
                                      hintText: 'Email',
                                      hintStyle: TextStyle(color: maximumColor),
                                      focusColor: maximumColor,
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(30))),
                                ),
                                constraints: BoxConstraints(maxWidth: 300),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Bounceable(
                                  onTap: () {},
                                  child: Container(
                                    width: 200,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: maximumColor,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Center(child: Text('Get E-book')),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Container(
                      color: maximumColor,
                      child: Image.asset('assets/images/book.jpg'),
                    ))
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
