import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/screens/Student/MyProfilePage/ProfileDetailsPage.dart';
import 'package:myapp/screens/Student/MyProfilePage/components/HIconswidget.dart';

import '../../../../customs/theme.dart';
import '../../../../utils/utils.dart';
import '../../../LoginPage/loginpage.dart';

class headerIcons extends StatelessWidget {
  const headerIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Expanded(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
          child: GridView(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 2,
              mainAxisSpacing: 10,
              childAspectRatio: 1,
            ),
            children: [

              hIconsWidget(
                  title: "PROFILE",
                  icon: FontAwesomeIcons.user,
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileDetailsPage()),
                    );
                  },
              ),

              hIconsWidget(
                title: "EDUCATION",
                icon: FontAwesomeIcons.school,
                onTap: (){},
              ),
              hIconsWidget(
                title: "MENTOR",
                icon: FontAwesomeIcons.userGroup,
                onTap: (){},
              ),
              hIconsWidget(
                title: "DIGITAL - ID",
                icon: FontAwesomeIcons.idCard,
                onTap: (){},
              ),
            ],
          ),
        ),
      );

  }
}
