import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:responsive_design/widgets/web_dialoge.dart';

class SmallWebScreen extends StatefulWidget {
  const SmallWebScreen({Key? key}) : super(key: key);

  @override
  State<SmallWebScreen> createState() => _SmallWebScreenState();
}

class _SmallWebScreenState extends State<SmallWebScreen> {
  Color maximumColor = Color(0xFF4F7C87);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(758, 1000),
      builder: () => Scaffold(
        backgroundColor: Color(0xFFF3F6F6),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            // color: Colors.red,
                            width: double.infinity,
                            height: 90,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 120.w,
                                  height: 80,
                                  child: Center(
                                    child: Text(
                                      'Logo here',
                                      style: TextStyle(
                                          fontSize: 25.sp,
                                          fontWeight: FontWeight.w600,
                                          color: maximumColor),
                                    ),
                                  ),
                                ),
                                Bounceable(
                                  onTap: () {},
                                  child: Container(
                                    width: 200.w,
                                    height: 42,
                                    margin: EdgeInsets.only(right: 3),
                                    child: Center(
                                      child: Text(
                                        'Record their answer',
                                        style: TextStyle(
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.w600,
                                            color: maximumColor),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.r),
                                        border: Border.all(
                                            color: maximumColor, width: 2)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            width: 320.w,
                            child: Text(
                              'Grow closer to your loved one by asking them this question',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 23.sp, color: maximumColor),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 580.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25.r)),
                            child: Padding(
                              padding: EdgeInsets.all(15.sp),
                              child: Center(
                                child: Text(
                                  'Loading....',
                                  style: TextStyle(
                                      fontSize: 32.sp, color: maximumColor),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            constraints: BoxConstraints(minHeight: 200),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Bounceable(
                                    onTap: () {
                                      Get.dialog(WebAlert());
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(25.r),
                                        color: maximumColor,
                                      ),
                                      height: 45,
                                      width: 250.w,
                                      child: Center(
                                          child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.copy_outlined,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          Text(
                                            'Copy with question',
                                            style: TextStyle(
                                                fontSize: 17.sp,
                                                color: Colors.white),
                                          )
                                        ],
                                      )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Bounceable(
                                    onTap: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25.r),
                                          border: Border.all(
                                              color: maximumColor, width: 2)),
                                      height: 45,
                                      width: 250.w,
                                      child: Center(
                                          child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.skip_next_outlined,
                                            color: maximumColor,
                                          ),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          Text(
                                            'Try another one',
                                            style: TextStyle(
                                                fontSize: 17.sp,
                                                color: maximumColor),
                                          )
                                        ],
                                      )),
                                    ),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Made by love with teamwell',
              style: TextStyle(fontSize: 16.sp, color: maximumColor),
            ),
          ],
        ),
      ),
    );
  }
}
