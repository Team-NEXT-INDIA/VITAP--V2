import 'package:flutter/material.dart';
import 'package:myapp/utils/utils.dart';

class CustomListStyle extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final List<Color> gradientColor;
  final GestureTapCallback? onTap;
  bool visible;

   CustomListStyle(
      {Key? key,
      required this.icon,
      required this.title,
      required this.subtitle,
      required this.gradientColor,
      required this.onTap,
      required this.visible,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Color(0xffE0E0E0), width: 0.3),
                  top: BorderSide(color: Color(0xffE0E0E0), width: 0.3))),
          child: ListTile(
            shape: const RoundedRectangleBorder(),
            onTap: onTap,
            leading: Container(
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: gradientColor)),
              child: Icon(
                icon,
                size: 19,
                color: Colors.white,
              ),
            ),
            title: Text(
              title,
              style: SafeGoogleFont('Poppins', fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              subtitle,
              style: SafeGoogleFont('Poppins',
                  fontWeight: FontWeight.normal,
                  color: const Color(0xffBDB9B9)),
            ),
            trailing: Visibility(
              visible: visible,
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFFADADAD),
                size: 20,
              ),
            ),
            tileColor: Colors.white,
            dense: true,
          ),
        ),
      ],
    );
  }
}
