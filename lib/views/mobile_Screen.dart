import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:responsive_design/model/questions.dart';
import 'package:responsive_design/widgets/web_dialoge.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  Color maximumColor = Color(0xFF4F7C87);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926),
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
                            height: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 90.w,
                                  height: 70,
                                  child: Center(
                                    child: Text(
                                      'Logo here',
                                      style: TextStyle(
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w600,
                                          color: maximumColor),
                                    ),
                                  ),
                                ),
                                Bounceable(
                                  onTap: () {},
                                  child: Container(
                                    width: 180.w,
                                    height: 40,
                                    margin: EdgeInsets.only(right: 3),
                                    child: Center(
                                      child: Text(
                                        'Record their answer',
                                        style: TextStyle(
                                            fontSize: 16.20.sp,
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
                            height: 20,
                          ),
                          Container(
                            width: 320.w,
                            child: Text(
                              'Grow closer to your loved one by asking them this question',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 21.sp, color: maximumColor),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: 380.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25.r)),
                            child: Padding(
                              padding: EdgeInsets.all(15.sp),
                              child: Center(
                                child: Text(
                                  questionLists[list_ind],
                                  style: TextStyle(
                                      fontSize: 35.sp, color: maximumColor),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            constraints: BoxConstraints(minHeight: 190),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Bounceable(
                            onTap: () {
                              Get.dialog(WebAlert());
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.r),
                                color: maximumColor,
                              ),
                              height: 40,
                              width: 250.w,
                              child: Center(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                        fontSize: 19.30.sp,
                                        color: Colors.white),
                                  )
                                ],
                              )),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Bounceable(
                            onTap: () {
                              if (list_ind < (questionLists.length - 1)) {
                                setState(() {
                                  list_ind++;
                                });
                              } else {
                                Get.snackbar('', '',
                                    colorText: Colors.white,
                                    snackStyle: SnackStyle.FLOATING,
                                    titleText: Text(
                                      'List finished',
                                      style: TextStyle(fontSize: 16.sp),
                                      textAlign: TextAlign.center,
                                    ),
                                    snackPosition: SnackPosition.BOTTOM,
                                    maxWidth: 200.w,
                                    backgroundColor: maximumColor,
                                    animationDuration: Duration(seconds: 1),
                                    duration: Duration(milliseconds: 1500),
                                    isDismissible: true);
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.r),
                                  border: Border.all(
                                      color: maximumColor, width: 2)),
                              height: 40,
                              width: 250.w,
                              child: Center(
                                  child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                        fontSize: 16.30.sp,
                                        color: maximumColor),
                                  )
                                ],
                              )),
                            ),
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
              style: TextStyle(fontSize: 12.sp, color: maximumColor),
            ),
          ],
        ),
      ),
    );
  }
}
