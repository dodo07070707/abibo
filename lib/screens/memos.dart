// import 'package:abibo/functions/control_memo.dart';
// import 'package:abibo/widgets/cards.dart';
// import 'package:flutter/material.dart';

// class Memos extends StatefulWidget {
//   const Memos({Key? key}) : super(key: key);

//   @override
//   State<Memos> createState() => _MemosState();
// }

// class _MemosState extends State<Memos> {
//   List<List> infos = [];

//   Future<void> searchInfos() async {
//     infos = await getAllMemo();
//   }

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double screenHeight = MediaQuery.of(context).size.height;
//     // ignore: unused_local_variable
//     double screenWidth = MediaQuery.of(context).size.width;

//     return Scaffold(
//       body: FutureBuilder(
//         future: searchInfos(),
//         builder: (context, snapshot) {
//           return Container(
//             width: double.infinity,
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/signup_screen.png'),
//                 fit: BoxFit.fill,
//               ),
//             ),
//             child: Padding(
//               padding: EdgeInsets.only(
//                 top: screenHeight / 844 * 38,
//                 bottom: 0,
//                 left: screenHeight / 844 * 30,
//                 right: screenHeight / 844 * 30,
//               ),
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: screenHeight / 844 * 94,
//                   ),
//                   Expanded(
//                     child: Container(
//                       child: ListView.separated(
//                         separatorBuilder: (context, index) => Padding(
//                           padding: const EdgeInsets.symmetric(vertical: 5),
//                           child: SizedBox(
//                             height: screenHeight / 844 * 24,
//                           ),
//                         ),
//                         itemCount: infos.length,
//                         itemBuilder: (BuildContext context, int index) {
//                           String name = infos[index][0];
//                           dynamic obj = infos[index][1];
//                           return MemoCard(
//                             name: name,
//                             text: obj,
//                             change: () {
//                               searchInfos();
//                               setState(() {});
//                             },
//                           );
//                         },
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
