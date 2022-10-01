import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:uopvs/First_Screen.dart';
import 'package:uopvs/RegisterNotEnrolled%20.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _date = TextEditingController();

  String? dvalue;

  final dropList = [" Male ", " Female ", " other "];
  @override
  void initState() {
    _date.text = ""; //set the initial value of text field
    super.initState();
  }

  String password = '';
  bool isPasswordVisable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff7195E1),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  "assets/untitled.png",
                  height: 226,
                  width: 350,
                ),
                Container(
                  height: 492,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 25,
                          ),
                          Text(
                            "Step 2: Register",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff7195E1))),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 25,
                          ),
                          Text(
                            "For students who are already \n enrolled in an institution.",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff7195E1))),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          EmailForm(),
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          DropDownUltra(),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                              width: 165,
                              height: 53,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(7)),
                                  border: Border.all(
                                      width: 3,
                                      color: const Color(0xff7195E1))),
                              child: TextField(
                                textAlign: TextAlign.center,
                                style:
                                    const TextStyle(color: Color(0xff7195E1)),
                                controller: _date,
                                //editing controller of this TextField
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  iconColor: Color(0xff7195E1),
                                  //icon of text field
                                  hintText: " date of birth ",
                                  hintStyle:
                                      TextStyle(color: Color(0xff7195E1)),

                                  //label text of field
                                ),
                                readOnly: true,
                                //set it true, so that user will not able to edit text
                                onTap: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1950),
                                      //DateTime.now() - not to allow to choose before today.
                                      lastDate: DateTime(2100));

                                  if (pickedDate != null) {
                                    //pickedDate output format => 2021-03-10 00:00:00.000
                                    String formattedDate =
                                        DateFormat('yyyy-MM-dd')
                                            .format(pickedDate);

                                    //formatted date output using intl package =>  2021-03-16
                                    setState(() {
                                      _date.text =
                                          formattedDate; //set output date to TextField value.
                                    });
                                  } else {}
                                },
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 33,
                          ),
                          Numberofmajor(),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 33,
                          ),
                          Container(
                            width: 300,
                            height: 50,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xff7195E1), width: 3),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(7))),
                            child: PasswordContanier("Password"),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 33,
                          ),
                          Container(
                            width: 300,
                            height: 50,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xff7195E1), width: 3),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(7))),
                            child: PasswordContanier("confirm Password"),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 33,
                          ),
                          button(),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 65,
                          ),
                          Text(
                            " Already have account? ",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff7195E1))),
                          ),
                          Login(),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  InkWell Login() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const RegisterNotEnrolled()));
      },
      child: SizedBox(
        child: Text(
          " Login ",
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff7195E1))),
        ),
      ),
    );
  }

  InkWell button() {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const FirstScreen()));
      },
      child: Container(
          width: 300,
          height: 50,
          decoration: const BoxDecoration(
              color: Color(0xff7195E1),
              borderRadius: BorderRadius.all(Radius.circular(9))),
          child: Center(
            child: Text(
              "Rigister",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffffffff))),
            ),
          )),
    );
  }

  // ignore: non_constant_identifier_names
  TextField PasswordContanier(String htxt) {
    return TextField(
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
            hintText: htxt,
            hintStyle: const TextStyle(color: Color(0xff7195E1)),
            border: InputBorder.none));
  }

  // ignore: non_constant_identifier_names
  Container DropDownUltra() {
    return Container(
      width: 120,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff7195E1), width: 3),
          borderRadius: const BorderRadius.all(Radius.circular(7))),
      child: DropdownButtonHideUnderline(
        child: DropDown(),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container Numberofmajor() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(7)),
          border: Border.all(width: 3, color: const Color(0xff7195E1))),
      width: 300,
      height: 50,
      child: TextFormField(
          textAlign: TextAlign.center,
          style: const TextStyle(color: Color(0xff7195E1)),
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: '  year of enrollment in your major ',
              hintStyle: TextStyle(color: Color(0xff7195E1)))),
    );
  }

  // ignore: non_constant_identifier_names
  DropdownButton<String> DropDown() {
    return DropdownButton<String>(
      alignment: Alignment.center,
      hint: const Text(
        " Gender ",
        style: TextStyle(color: Color(0xff7195E1)),
      ),
      dropdownColor: const Color(0xffffffff),
      value: dvalue,
      icon: const Image(
        height: 10,
        width: 3,
        image: AssetImage(
          "assets/down-arrow.png",
        ),
      ),
      elevation: 16,
      style: const TextStyle(color: Color(0xff7195E1)),
      onChanged: (String? newValue) {
        // This is called when the user selects an item.
        setState(() {
          dvalue = newValue!;
        });
      },
      items: dropList.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  // ignore: non_constant_identifier_names
  Container EmailForm() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(7)),
          border: Border.all(width: 3, color: const Color(0xff7195E1))),
      height: 50,
      width: 300,
      child: const TextField(
          style: TextStyle(color: Color(0xff7195E1)),
          decoration: InputDecoration(
            focusColor: Color(0xff7195E1),
            border: InputBorder.none,
            hintText: '   name@example.com',
            labelStyle: TextStyle(color: Color(0xff7195E1)),
            hintStyle: TextStyle(color: Color(0xff7195E1)),
          )),
    );
  }
}
