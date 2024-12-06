import 'dart:ui';

import 'package:errandbud1/models/custom_textfield.dart';
import 'package:errandbud1/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatelessWidget {
  const Register({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Gap(20),
          CustomTextField(
            labelText: "Name",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Name is required";
              }
              return null;
            },
          ),
          const Gap(20),
          CustomTextField(
            labelText: "Phone Number",
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Phone Number is required";
              } else if (value.length > 11) {
                return "Enter a valid number";
              }
              return null;
            },
          ),
          const Gap(20),
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
          const Gap(20),
          CustomTextField(
            labelText: "Confirm Password",
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Confirm Password is required";
              }
              return null;
            },
          ),
          Gap(20),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 41, 82, 85),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.symmetric(vertical: 16),
              minimumSize: Size(double.infinity, 55),
            ),
            child: Text(
              "Register",
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
