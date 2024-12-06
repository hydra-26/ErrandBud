import 'package:errandbud1/models/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({
    super.key,
  });

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _check = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Gap(20),
          CustomTextField(
            labelText: "Phone Number",
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Phone Number is required";
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          CustomTextField(
            labelText: "Password",
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Password is required";
              }
              return null;
            },
          ),
          Gap(5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: _check,
                onChanged: (bool? value) {
                  setState(() {
                    _check = !_check;
                  });
                },
                checkColor: Colors.white,
                activeColor: Color.fromARGB(255, 41, 82, 85),
              ),
              Text(
                "Remember me?",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Color.fromARGB(255, 41, 82, 85)),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                      fontSize: 12, color: Color.fromARGB(255, 41, 82, 85)),
                ),
              ),
            ],
          ),
          Gap(20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 41, 82, 85),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.symmetric(vertical: 16),
              minimumSize: Size(double.infinity, 55),
            ),
            child: Text(
              "Login",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
