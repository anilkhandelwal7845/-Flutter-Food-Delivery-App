import 'package:bottomnavigation/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class PhonenumberScreen extends StatefulWidget {
  const PhonenumberScreen({Key? key}) : super(key: key);

  @override
  State<PhonenumberScreen> createState() => _PhonenumberScreenState();
}

class _PhonenumberScreenState extends State<PhonenumberScreen> {
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
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: TextFormField(
                    validator: MultiValidator([
                      RequiredValidator(errorText: "Required"),
                      MinLengthValidator(10,
                          errorText: "Enter your valid mobile num"),
                      MaxLengthValidator(10,
                          errorText: "Enter your valid mobile num"),
                    ]),
                    onChanged: (value){
                      validate;
                      print('called val');
                    },
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.phone_iphone),
                      hintText: "Mobile Number",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextButton(onPressed: validate, child: const Text("Verify Number")),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.teal.withOpacity(.8),
          child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const OtpScreen()));
              },
              icon: const Icon(Icons.arrow_forward_outlined)),
        ),
      ),
    );
  }
}
