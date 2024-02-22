import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

///共通画面ヘッダ　設定ボタン(通知[バイト入室記録、お会計アラート、注文経過時間、在庫切れアラート])
class CommonAppbar extends ConsumerWidget {
  const CommonAppbar(this.amount, {Key? key}) : super(key: key);

  final String amount;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      // 左側戻る
      leading: const Icon(Icons.arrow_back),
      // タイトルテキスト
      title: Center(
        child: Text(
          "sales ¥$amount円",
          style: const TextStyle(
            fontSize: 17,
          ),
        ),
      ),
      // 右側アイコン
      actions: <Widget>[
        //店内カメラwatch
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.video_camera_front,
          ),
        ),
        //ドロワメニュー (widget切り出し[設定関連リスト化（通知、バイトメンバー評価、）])
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu_open,
          ),
        ),
      ],
    );
  }
}
