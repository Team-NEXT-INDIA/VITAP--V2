import 'package:flutter/material.dart';

import '../components/textBox.dart';

class PersonalBuild extends StatefulWidget {
  const PersonalBuild({Key? key}) : super(key: key);

  @override
  State<PersonalBuild> createState() => _PersonalBuildState();
}

class _PersonalBuildState extends State<PersonalBuild> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          TextBox(header: "Application Number", text: '2021112059'),
          TextBox(header: "Student Name", text: 'SAMUEL PHILIP'),
          TextBox(header: "Date Of Birth", text: '03-Dec-2003'),
          TextBox(header: "Gender", text: 'MALE'),
          TextBox(header: "Native Language", text: 'TELUGU'),
          TextBox(header: "Native State", text: 'ANDHRA PRADESH'),
          TextBox(header: "Blood Group", text: 'O+'),
          TextBox(header: "Physically Challenged", text: 'NO'),
          TextBox(header: "Hosteller", text: 'YES'),
          TextBox(header: "Aadhar Number", text: '21010xxxxxxxx090'),
        ],
      ),
    );
  }
}
