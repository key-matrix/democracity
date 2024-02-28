import 'package:flutter_riverpod/flutter_riverpod.dart';

//App名
final appNameProvider = StateProvider((ref) => "Democracity");

//  ----ログイン時 ----
//入力ユーザ名
final inputUseNameProvider = StateProvider((ref) => "aa");
//入力パスワード
final inputPassProvider = StateProvider((ref) => "aa");

//  ----ログイン後情報 ----
//ユーザ名(ニック)
final userNickNameProvider = StateProvider((ref) => "") as String;
//年齢
final userAgeProvider = StateProvider((ref) => 0) as int;
//住まいの国
final userStateProvider = StateProvider((ref) => 0) as String;
//住まいの地域
final userStateAreaProvider = StateProvider((ref) => 0) as String;
//興味,関心タグリスト
final curiousTagProvider = StateProvider((ref) => []) as List<String>;
//課金判定
final accountPaymentStateProvider = StateProvider((ref) => "") as bool;
//ドネーション可能額
final donationableAmountProvider = StateProvider((ref) => "") as double;
//ドネーション実行額
final donatedAmountProvider = StateProvider((ref) => "") as double;
//最終ログイン時刻(ログアウトした時刻「UTF」)
final lastLoginProvider = StateProvider((ref) => "") as DateTime;

//アクティブユーザー判定(1-5　で判定) 段階的にアクセス権付与
// ログインしない
// ログインのみ(少ない)
// ログインのみ(多い)
// ログインし投稿あり
// 投稿に反響あり(繰り返し)
final activeParamProvider = StateProvider((ref) => "") as int;
//もらったLIKE数
final likedProvider = StateProvider((ref) => "") as int;
//LIKE持ち数
final likeAmountProvider = StateProvider((ref) => "") as int;
//投稿リスト (タイトル : 本文)
final postedListProvider =
    StateProvider((ref) => []) as List<Map<String, String>>;

//----------------------------------------------------------------------------OLD 削除予定

///通知確認済判定
final checkedNoticeProvider = StateProvider<bool>((ref) => false);

///現在稼働中メンバー　DBから取得
final activeMemberProvider =
    StateProvider<List<String>>((ref) => ['はんちん', 'はるか', 'あさか']);

///スタンバイメンバー　DBから取得
final standByMemberProvider =
    StateProvider<List<String>>((ref) => ['ゆりぴー', '次郎', '三郎']);

///1時間人件費換算 todo  : 人件費計算
final oneHourCostProvider = StateProvider<int>((ref) => 3000 + 1200 + 1200);

///1時間利益換算 todo  :　list  加算
final oneHourProfitProvider =
    StateProvider<List<int>>((ref) => [3500, 3500, 3500]);

///総合利益換算 todo 動的に変更
final allDayProfitProvider = StateProvider<List<int>>(
    (ref) => [3500, 8500, 3500, 8500, 6500, 6500, 4400, 8700, 901]);

///在庫管理対象リスト
final inventoryManageListProvider =
    StateProvider<List<String>>((ref) => ["キャベツ", "醤油", "玉ねぎ"]);

///通知リスト
final noticeListProvider = StateProvider<List<String>>(
    (ref) => ["今日ははるかさんの誕生日です", "19:30から10名の予約があります。"]);
