// import 'package:flutter/material.dart';
//
// import '../../../../utils/utils.dart';
//
// class upcomingEventsBuild extends StatelessWidget {
//   const upcomingEventsBuild({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     var borderRadius = BorderRadius.circular(25);
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(left: 15.0, right: 15.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   Text(
//                     "Upcoming Events",
//                     style: SafeGoogleFont(
//                       'Poppins',
//                       fontSize: 17,
//                       fontWeight: FontWeight.bold,
//                       color: const Color(0xff43434E),
//                     ),
//                   ),
//                   Text(
//                     "(7)",
//                     style: SafeGoogleFont(
//                       'Poppins',
//                       fontSize: 10,
//                       fontWeight: FontWeight.bold,
//                       color: const Color(0xffbebdc5),
//                     ),
//                   ),
//                 ],
//               ),
//               InkWell(
//                 borderRadius: BorderRadius.circular(6),
//                 onTap: () {},
//                 child: Container(
//                   decoration:
//                   BoxDecoration(borderRadius: BorderRadius.circular(6)),
//                   margin: EdgeInsets.all(10),
//                   child: Text(
//                     "See All",
//                     style: SafeGoogleFont(
//                       'Poppins',
//                       fontSize: 12,
//                       fontWeight: FontWeight.w500,
//                       height: 1.5,
//                       color: const Color(0xff3D31C4),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//         // Generated code for this Column Widget...
//         Padding(
//           padding: const EdgeInsets.all(15),
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 height: 160,
//                 child: Stack(
//                   alignment: AlignmentDirectional(0, 1),
//                   children: [
//                     Align(
//                       alignment: AlignmentDirectional(0, -1),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(0),
//                           bottomRight: Radius.circular(0),
//                           topLeft: Radius.circular(8),
//                           topRight: Radius.circular(8),
//                         ),
//                         child: Image.network(
//                           'https://images.unsplash.com/photo-1567850083672-65ae6c8a696b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDJ8fGNhbm5hYmlzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
//                           width: double.infinity,
//                           height: 130,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Align(
//                       alignment: AlignmentDirectional(0, 1),
//                       child: Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(16, 0, 24, 0),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.max,
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: [
//                             Row(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Icon(
//                                   Icons.grid_on_rounded,
//                                   color: Colors.black,
//                                   size: 24,
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       8, 0, 0, 0),
//                                   child: Text(
//                                     'World News',
//                                     style: TextStyle(
//                                       fontFamily: 'Poppins',
//                                       color: Colors.black,
//                                       fontWeight: FontWeight.normal,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Padding(
//                               padding:
//                               EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
//                               child: Container(
//                                 width: 40,
//                                 height: 40,
//                                 decoration: BoxDecoration(
//                                   gradient: LinearGradient(
//                                     colors: [
//                                       Color(0xffff5655),
//                                       Color(0xffea0411),
//                                       Color(0xff9f2be8)
//                                     ],
//                                     stops: [0, 0.3, 1],
//                                     begin: AlignmentDirectional(1, 0.98),
//                                     end: AlignmentDirectional(-1, -0.98),
//                                   ),
//                                   shape: BoxShape.circle,
//                                 ),
//                                 child: Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       2, 2, 2, 2),
//                                   child: Container(
//                                     width: 40,
//                                     height: 40,
//                                     decoration: BoxDecoration(
//                                       color: Colors.white,
//                                       shape: BoxShape.circle,
//                                     ),
//                                     child: Icon(
//                                       Icons.chevron_right_rounded,
//                                       color: Colors.black,
//                                       size: 32,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 0),
//                 child: Text(
//                   'Cannabis in Thailand',
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
//                 child: Text(
//                   'Thialand just legalized Cannabis in their country. But there’s more to the story. Do you think you know it?',
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 12),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.max,
//                   children: [
//                     Card(
//                       clipBehavior: Clip.antiAliasWithSaveLayer,
//                       color: Colors.white,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(40),
//                       ),
//                       child: Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(40),
//                           child: Image.network(
//                             'https://images.unsplash.com/photo-1620577438168-b2079ab90f86?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHBvY3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
//                             width: 20,
//                             height: 20,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Card(
//                       clipBehavior: Clip.antiAliasWithSaveLayer,
//                       color: Colors.white,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(40),
//                       ),
//                       child: Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(40),
//                           child: Image.network(
//                             'https://images.unsplash.com/photo-1620577438168-b2079ab90f86?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHBvY3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
//                             width: 20,
//                             height: 20,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Card(
//                       clipBehavior: Clip.antiAliasWithSaveLayer,
//                       color: Colors.white,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(40),
//                       ),
//                       child: Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(40),
//                           child: Image.network(
//                             'https://images.unsplash.com/photo-1620577438168-b2079ab90f86?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHBvY3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
//                             width: 20,
//                             height: 20,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Text(
//                       '16 friends played',
//                     ),
//                     Expanded(
//                       child: Text(
//                         'View related topics',
//                         textAlign: TextAlign.end,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
