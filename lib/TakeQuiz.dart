import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TakeQuiz extends StatelessWidget {
  const TakeQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: Center(
          child: Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assets/topCircle.png"),
                          IconButton(
                              icon: const Icon(Icons.arrow_back,
                                  color: Colors.white),
                              onPressed: () => Navigator.of(context).pop()),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Image.asset(
                              "assets/takeQuizPic.png",
                              width: 317.05.w,
                              height: 367.05.h,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "Are you confused and you\ndon't know what you would\nlike to major in? ",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            letterSpacing: 2.0.sp,
                            color: const Color(0xff7195E1),
                            fontSize: 20.sp,
                            shadows: [
                          Shadow(
                              color: Colors.black.withOpacity(0.4.sp),
                              offset: Offset(0.w, 2.h),
                              blurRadius: 7),
                        ])),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 55.h,
                      ),
                      Text(
                        "don’t worry we are going\nto help.",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.normal,
                                letterSpacing: 2.0.sp,
                                color: const Color(0xff9399A6),
                                fontSize: 18.sp,
                                shadows: [
                              Shadow(
                                  color: Colors.black.withOpacity(0.4.sp),
                                  offset: Offset(0.w, 2.h),
                                  blurRadius: 7),
                            ])),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 90.h,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TakeQuiz()),
                    ),
                    child: Container(
                      //Yes, I'm enrolled button
                      width: 380.w,
                      height: 55.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40.r)),
                          color: const Color(0xff7195E1)),
                      child: Center(
                        child: Text("Take  Quiz.",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2.0.sp,
                                    color: const Color(0xffffffff),
                                    shadows: [
                                  Shadow(
                                      color: Colors.black.withOpacity(0.4.sp),
                                      offset: Offset(0.w, 2.h),
                                      blurRadius: 7),
                                ]))),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [Image.asset("assets/bottomCircle.png")],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
