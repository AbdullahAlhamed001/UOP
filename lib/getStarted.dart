import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uopvs/First_Screen.dart';
import 'package:uopvs/StepOneRegister.dart';
import 'package:uopvs/TakeQuiz.dart';

class getStarted extends StatelessWidget {
  const getStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff7195E1),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 55.h,
              ),
              Text(
                "Welcome To UOP Virtual\nAssistant ",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.normal,
                        letterSpacing: 2.sp,
                        color: const Color(0xffffffff),
                        fontSize: 24.sp)),
              ),
              SizedBox(
                height: 50.h,
              ),
              Expanded(
                child: Stack(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 80.w),
                        Image.asset(
                          "assets/business-3d-with-phone-man-5 1.png",
                          height: 250.h,
                          width: 216.w,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 200.h),
                      child: Container(
                        //white container
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: const Color(0xffFFFFFF),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40.r),
                                topRight: Radius.circular(40.r))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30.h,
                            ),
                            Text(" Get Started NOW! ",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 24.sp,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 2.sp,
                                        wordSpacing: 2.5.sp,
                                        color: const Color(0xff7195E1)))),
                            SizedBox(
                              height: 31.h,
                            ),
                            Text(
                                "Improve your Academic\nperformance with UOP Virtual\nAssistant. ",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.normal,
                                        letterSpacing: 2.sp,
                                        wordSpacing: 2.5.sp,
                                        color: const Color(0xff7195E1)))),
                            SizedBox(
                              height: 50.h,
                            ),
                            button("Register", context),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text("OR",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.normal,
                                        letterSpacing: 2.sp,
                                        color: const Color(0xff7195E1)))),
                            SizedBox(
                              height: 5.h,
                            ),
                            button1("Login", context),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  InkWell button1(String txt, BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const FirstScreen()),
      ),
      child: Container(
        width: 240.w,
        height: 40.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40.r)),
            color: const Color(0xff7195E1)),
        child: Center(
          child: Text(txt,
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 2.sp,
                      color: const Color(0xffffffff)))),
        ),
      ),
    );
  }

  InkWell button(String txt, BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const StepOneRegister()),
      ),
      child: Container(
        width: 240.w,
        height: 40.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40.r)),
            color: const Color(0xff7195E1)),
        child: Center(
          child: Text(txt,
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 2.sp,
                      color: const Color(0xffffffff)))),
        ),
      ),
    );
  }
}
