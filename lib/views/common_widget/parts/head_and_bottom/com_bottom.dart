// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// //  共通フッター
//
//
// ///共通Footer(勤怠、コスト計算、カメラview)
// class BottomNaviBar extends ConsumerWidget {
//   const BottomNaviBar({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // todo 項目 : 勤怠、コスト計算、カメラview
//
//     //todo 最下部へ移動（グラフ挿入後レイアウト修正-幅、Colors,Animations）
//     return Expanded(
//         child: Row(
//       children: [
//         //勤怠ボタン
//         ElevatedButton.icon(
//           icon: const Icon(
//             //時間Icons
//             Icons.calendar_today,
//             color: Colors.white,
//           ),
//           label: const Text('timeSchedule'),
//           style: ElevatedButton.styleFrom(
//             foregroundColor: Colors.green,
//             backgroundColor: Colors.green,
//           ),
//           onPressed: () {},
//         ),
//         //コスト参照ボタン(Top画面)
//         ElevatedButton.icon(
//           icon: const Icon(
//             Icons.dashboard,
//             color: Colors.white,
//           ),
//           label: const Text('top'),
//           style: ElevatedButton.styleFrom(
//             foregroundColor: Colors.green,
//             backgroundColor: Colors.green,
//           ),
//           onPressed: () {},
//         ),
//         //履歴画面
//         ElevatedButton.icon(
//           icon: const Icon(
//             Icons.history,
//             color: Colors.white,
//           ),
//           label: const Text('history'),
//           style: ElevatedButton.styleFrom(
//             foregroundColor: Colors.green,
//             backgroundColor: Colors.green,
//           ),
//           onPressed: () {},
//         ),
//       ],
//     ));
//   }
// }
