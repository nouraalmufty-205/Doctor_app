// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// class AllRecordItem extends StatelessWidget {
//   const AllRecordItem({
//     super.key,
//     required this.day,
//     required this.month,

//     required this.firstrecord,
//     required this.secandrecord,
//     required this.thirdrecord,

//     required this.firstrecord,
//     required this.secandrecord,
//     required this.thirdrecord

//   });

//   final String day;
//   final String month;
//   final String firstrecord;
//   final String secandrecord;
//   final String thirdrecord;

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           width: 335,
//           height: 110,
//           decoration: BoxDecoration(
//             color: const Color(0xffFFFFFF),
//             borderRadius: BorderRadius.circular(8),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.only(top: 14, left: 14, bottom: 8),
//             child: Row(
//               children: [
//                 Column(
//                   children: [
//                     Container(
//                       width: 55,
//                       height: 60,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(6),
//                         color: const Color(0xff0EBE7F),
//                       ),
//                       child: Center(
//                         child: Text(
//                           '$day\n$month',
//                           textAlign: TextAlign.center,
//                           style: const TextStyle(
//                             fontWeight: FontWeight.w500,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 6),
//                     Container(
//                       width: 55,
//                       height: 22,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(6),
//                         color: const Color(0xff0EBE7F1A),
//                       ),
//                       child: const Center(
//                         child: Text(
//                           "NEW",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontWeight: FontWeight.w500,
//                             color: Color(0xff0EBE7F),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(width: 12),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [

//                     Text(
//                       firstrecord,
//                       style: const TextStyle(fontWeight: FontWeight.w500),
//                     ),
//                     const SizedBox(height: 5),
//                     Text(
//                       secandrecord,
//                       style: const TextStyle(
//                         fontWeight: FontWeight.w300,
//                         fontSize: 12,
//                         color: Color(0xff0EBE7F),
//                       ),
//                     ),
//                     const SizedBox(height: 11),
//                     Text(
//                       thirdrecord,
//                       style: const TextStyle(
//                         fontWeight: FontWeight.w300,
//                         fontSize: 12,
//                         color: Color(0xff677294),
//                       ),
//                     ),

//                     Text(firstrecord, style: const TextStyle(fontWeight: FontWeight.w500)),
//                     const SizedBox(height: 5),
//                     Text(secandrecord, style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 12, color: Color(0xff0EBE7F))),
//                     const SizedBox(height: 11),
//                     Text(thirdrecord, style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 12, color: Color(0xff677294))),

//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Positioned(
//           top: 10,
//           right: 10,

//           child: SvgPicture.asset(
//             "assets/icons/threedots.svg",
//             width: 4,
//             height: 20,
//           ),

//           child: SvgPicture.asset("assets/icons/threedots.svg" ,width: 4,height: 20,) ,

//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllRecordItem extends StatelessWidget {
  const AllRecordItem({
    super.key,
    required this.day,
    required this.month,
    required this.firstrecord,
    required this.secandrecord,
    required this.thirdrecord,
  });

  final String day;
  final String month;
  final String firstrecord;
  final String secandrecord;
  final String thirdrecord;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 335,
          height: 110,
          decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 14, left: 14, bottom: 8),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 55,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: const Color(0xff0EBE7F),
                      ),
                      child: Center(
                        child: Text(
                          '$day\n$month',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Container(
                      width: 55,
                      height: 22,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: const Color(0xff0EBE7F1A),
                      ),
                      child: const Center(
                        child: Text(
                          "NEW",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xff0EBE7F),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      firstrecord,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      secandrecord,
                      style: const TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                        color: Color(0xff0EBE7F),
                      ),
                    ),
                    const SizedBox(height: 11),
                    Text(
                      thirdrecord,
                      style: const TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                        color: Color(0xff677294),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: SvgPicture.asset(
            "assets/icons/threedots.svg",
            width: 4,
            height: 20,
          ),
        ),
      ],
    );
  }
}
