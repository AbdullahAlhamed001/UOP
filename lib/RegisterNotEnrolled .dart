import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uopvs/TakeQuiz.dart';

class RegisterNotEnrolled extends StatelessWidget {
  const RegisterNotEnrolled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 600,
                    decoration: const BoxDecoration(
                        color: Color(0xff7195E1),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40))),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 70,
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: (() {
                                  Navigator.pop(context);
                                }),
                                icon: const Icon(
                                  Icons.arrow_back_ios_new,
                                  color: Color(0xffffffff),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 25.0, left: 15),
                              child: Text(
                                "Step 2: Register Account \n for not enrolled users.",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffffffff))),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 65,
                            ),
                            Text(
                              "Step 2 : Fill your details or continue with\n social media.",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xffffffff))),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TxtBox(' First Name '),
                        const SizedBox(
                          height: 30,
                        ),
                        TxtBox('Last Name'),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          " Already have an Account! ",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xffffffff))),
                        ),
                      ],
                    ),
                  ),
                  PushButton(context)
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  " Sign in with ",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff7195E1))),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialMediea("untitled (4).png", 37, 36),
                  const SizedBox(
                    width: 20,
                  ),
                  SocialMediea("untitled (2).png", 37, 36),
                  const SizedBox(
                    width: 20,
                  ),
                  SocialMediea("untitled (3).png", 60, 46)
                ],
              ),
              Text(
                " By Continuing you agree to our ",
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff7195E1))),
              ),
              Text(
                " terms and conditions ",
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff17161C))),
              ),
            ],
          ),
        ),
      ),
    );
  }

  InkWell PushButton(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const TakeQuiz()));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 170, top: 570),
        child: Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
              color: Color(0xff00CFFD),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: const Center(
            child: Icon(
              Icons.arrow_forward_ios,
              color: Color(0xffFFFFFF),
            ),
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Image SocialMediea(String picName, double height, double width) =>
      Image.asset(
        "assets/$picName",
        height: height,
        width: width,
      );

  // ignore: non_constant_identifier_names
  Row TxtBox(String type) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          width: 20,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 9),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(7)),
              border: Border.all(width: 3, color: const Color(0xffffffff))),
          height: 50,
          width: 290,
          child: TextField(
              style: const TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                focusColor: const Color(0xff7195E1),
                border: InputBorder.none,
                suffixIcon: const Icon(
                  Icons.person,
                  color: Color(0xffffffff),
                ),
                hintText: type,
                labelStyle: const TextStyle(color: Color(0xff7195E1)),
                hintStyle: const TextStyle(
                    color: Color(0xffffffff), fontWeight: FontWeight.bold),
              )),
        ),
      ],
    );
  }
}
