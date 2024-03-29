import 'package:copy/Component/help%20&%20info/ButtonComponent.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AppSettings extends StatelessWidget {
  const AppSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: const Center(
            child: FaIcon(
                FontAwesomeIcons.chevronLeft
            ),
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Settings",
          style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            buttonComponent(title: "Language", onTap: (){},arow: ">",text: "EN",),
            buttonComponent(title: "Dark Theme", onTap: (){},arow: ">",isTrue: true,),
            buttonComponent(title: "Clear Cacha", onTap: (){},arow: ">",text: "2135",)
          ],
        ),
      ),
    );
  }
}
