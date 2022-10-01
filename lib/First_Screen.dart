import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uopvs/registerPage.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final emailController = TextEditingController();
  @override
  void initState() {
    super.initState();
    emailController.addListener(() {
      setState(() {});
    });
  }

  String password = '';
  bool isPasswordVisable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 73,
              ),
              Stack(
                children: [
                  IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                      ),
                      color: Color(0xff7195E1),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Image.asset("assets/business-3d-with-phone-man-5 1.png",
                          height: 155, width: 131),
                      const SizedBox(
                        width: 30,
                      ),
                      Text("UOP Virtual \n Assistant ",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff7195E1))))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150.0),
                    child: Container(
                      height: 558,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Color(0xff7195E1),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Text(" Welcome back ! ",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffffffff)))),
                          const SizedBox(
                            height: 30,
                          ),
                          Image.asset(
                            "assets/Group 3.png",
                            height: 155,
                            width: 164,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          buildEmail("   Email ", false, 'name@example.com'),
                          const SizedBox(
                            height: 20,
                          ),
                          buildPassword("   Password", true, ""),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(" Forget password ? ",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffffffff)))),
                          const SizedBox(
                            height: 20,
                          ),
                          signinWidget(context),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 50,
                              ),
                              Text(" don’t have an account? ",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xffffffff)))),
                              signup()
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  InkWell signup() {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const RegisterPage()));
      },
      child: SizedBox(
        child: Text(" Sign up ",
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffffffff)))),
      ),
    );
  }

  InkWell signinWidget(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const RegisterPage()));
      },
      child: Container(
        height: 50,
        width: 300,
        decoration: const BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.all(Radius.circular(40))),
        child: Center(
          child: Text(" Sign In ",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff7195E1)))),
        ),
      ),
    );
  }

  Widget buildEmail(String txt, bool hideText, String hTxt) => SizedBox(
        width: 300,
        height: 50,
        child: TextField(
          controller: emailController,
          obscureText: hideText,
          decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: emailController.text.isEmpty
                    ? Container(
                        width: 0,
                      )
                    : const Icon(Icons.close),
                onPressed: () => emailController.clear(),
              ),
              filled: true,
              fillColor: const Color(0xffffffff),
              labelText: txt,
              hintText: hTxt,
              border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffffffff)),
                  borderRadius: BorderRadius.all(Radius.circular(40)))),
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.done,
        ),
      );
  Widget buildPassword(String txt, bool hideText, String hTxt) => SizedBox(
        width: 300,
        height: 50,
        child: TextField(
          obscureText: isPasswordVisable,
          decoration: InputDecoration(
              // errorText: 'Password is wrong',
              suffixIcon: IconButton(
                icon: isPasswordVisable
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility),
                onPressed: () => setState(() {
                  isPasswordVisable = !isPasswordVisable;
                }),
              ),
              filled: true,
              fillColor: const Color(0xffffffff),
              labelText: txt,
              hintText: hTxt,
              border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffffffff)),
                  borderRadius: BorderRadius.all(Radius.circular(40)))),
          textInputAction: TextInputAction.done,
        ),
      );
}
