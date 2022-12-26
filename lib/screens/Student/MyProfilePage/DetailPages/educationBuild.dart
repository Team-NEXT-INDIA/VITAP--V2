import 'package:flutter/material.dart';

import '../components/textBox.dart';

class EducationBuild extends StatefulWidget {
  const EducationBuild({Key? key}) : super(key: key);

  @override
  State<EducationBuild> createState() => _EducationBuildState();
}

class _EducationBuildState extends State<EducationBuild> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          TextBox(header: "Applied Degree", text: 'UG'),
          TextBox(
              header: "Educational Qualification", text: '12TH/INTERMEDIATE'),
          TextBox(header: "Branch / Group Studied", text: 'MPC'),
          TextBox(header: "School Name", text: 'SRI CHAITANYA JUNIOR COLLEGE'),
          TextBox(header: "Medium of study", text: 'ENGLISH'),
          TextBox(
              header: "Board / University",
              text: 'ANDHRA PRADESH BOARD OF INTERMEDIATE EDUCATION'),
          TextBox(header: "Register No/ Roll No", text: '21092xxxx'),
          TextBox(header: "Class obtained", text: 'FIRST CLASS'),
          TextBox(header: "Year Of Passing/ Passed", text: '2021'),
          TextBox(header: "Month Of Passing/ Passed", text: 'MAY'),
        ],
      ),
    );
  }
}
