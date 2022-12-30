import 'package:flutter/material.dart';
import 'package:myapp/utils/widget_functions.dart';

import '../../../StreamingComponents/Student/streams_build.dart';
import '../../../utils/utils.dart';

class StreamSliderBuild extends StatelessWidget {
  const StreamSliderBuild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Our Streams",
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff43434E),
                    ),
                  ),
                ],
              ),
              InkWell(
                borderRadius: BorderRadius.circular(6),
                onTap: () {},
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(6)),
                  margin: const EdgeInsets.all(10),
                  child: Text(
                    "View All",
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                      color: const Color(0xff3D31C4),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addHorizontalSpace(10),
              const StreamCards(
                type: 'LIVE',
                title: 'Hackathon Live',
                image:
                    "https://vitap.ac.in/wp-content/uploads/2021/06/SCOPE-EVENTS-10.png",
                subtitle: 'SCOPE',
                typeColor: Colors.red,
              ),
              const StreamCards(
                type: 'FILE',
                typeColor: Colors.amber,
                title: 'V-TAPP Ceremony',
                image:
                    "https://i.ibb.co/GRpfZ2f/VTAPP-International-Technical-Fest-VIT-AP-University-18-47-screenshot.png",
                subtitle: 'EVENT',
              ),
              const StreamCards(
                typeColor: Colors.amber,
                type: 'FILE',
                title: '2nd Convocation 2022',
                image:
                    "https://i.im.ge/2022/12/30/qW9QJz.2nd-Convocation-2022-Full-Official-Video-VIT-AP-University-SMC-0-16-screenshot.png",
                subtitle: 'SCOPE',
              ),
              const StreamCards(
                typeColor: Colors.amber,
                type: 'LIVE',
                title: 'Hackathon Live',
                image:
                    "https://vitap.ac.in/wp-content/uploads/2021/06/SCOPE-EVENTS-10.png",
                subtitle: 'SCOPE',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
