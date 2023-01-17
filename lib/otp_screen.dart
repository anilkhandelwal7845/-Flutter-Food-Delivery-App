import 'package:bottomnavigation/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:form_field_validator/form_field_validator.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validate() {
    if (formkey.currentState!.validate()) {
      print("OK");
    } else {
      print("ERROR");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding:  EdgeInsets.only(left: 30, right: 30),
                  // child: TextFormField(
                  //   keyboardType: TextInputType.number,
                  //   decoration: const InputDecoration(
                  //     hintText: "Mobile Number",
                  //
                  //   ),
                  // ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60),
                  child: PinCodeTextField(

                    validator: MultiValidator([
                      RequiredValidator(errorText: "Required"),
                      MinLengthValidator(4,
                          errorText: "Enter your valid mobile num"),
                      MaxLengthValidator(4,
                          errorText: "Enter your valid mobile num"),
                    ]),

                    appContext: context,
                    length: 4,
                    onChanged: (value) {},
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    obscuringCharacter: 'X',
                    cursorColor: Colors.black,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      fieldHeight: 50,
                      fieldWidth: 40,
                      borderRadius: BorderRadius.circular(10),
                      inactiveColor: Colors.grey,
                      activeColor: Colors.teal,
                      selectedColor: Colors.black87,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 40,
                ),

                TextButton(onPressed: validate, child: Text("Verify Otp")),

                const SizedBox(
                  height: 40,
                ),
                // InkWell(
                //   child: Container(
                //     height: 40,
                //     width: 250,
                //     decoration: BoxDecoration(
                //       color: Colors.teal,
                //       borderRadius: BorderRadius.circular(7),
                //     ),
                //     child: Center(
                //       child: AnimatedTextKit(
                //         animatedTexts: [
                //           TypewriterAnimatedText("Verify OTP",
                //               textStyle: const TextStyle(fontSize: 20)),
                //         ],
                //         totalRepeatCount: 20,
                //       ),
                //     ),
                //   ),
                //   onTap: () {
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => const NavigationBottomBar()));
                //   },
                // ),


              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.teal.withOpacity(.8),
          child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const NavigationBottomBar()));
              },
              icon: const Icon(Icons.arrow_forward_outlined)),
        ),
      ),
    );
  }
}
