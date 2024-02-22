import 'package:flutter_riverpod/flutter_riverpod.dart';

//  ----ログイン時 ----
//入力ユーザ名
final inputUseName = StateProvider((ref) => "") as String;
//入力パスワード
final inputPass = StateProvider((ref) => "") as String;

//  ----ログイン後情報 ----
//ユーザ名(ニック)
final userNickName = StateProvider((ref) => "") as String;
//年齢
final userAge = StateProvider((ref) => 0) as int;
//住まいの国
final userState = StateProvider((ref) => 0) as String;
//住まいの地域
final userStateArea = StateProvider((ref) => 0) as String;
//興味,関心タグリスト
final curiousTag = StateProvider((ref) => []) as List<String>;
//課金判定
final accountPaymentState = StateProvider((ref) => "") as bool;
//ドネーション可能額
final donationableAmount = StateProvider((ref) => "") as double;
//ドネーション実行額
final donatedAmount = StateProvider((ref) => "") as double;
//最終ログイン時刻(ログアウトした時刻「UTF」)
final lastLogin = StateProvider((ref) => "") as DateTime;

//アクティブユーザー判定(1-5　で判定) 段階的にアクセス権付与
// ログインしない
// ログインのみ(少ない)
// ログインのみ(多い)
// ログインし投稿あり
// 投稿に反響あり(繰り返し)
final activeParam = StateProvider((ref) => "") as int;
//もらったLIKE数
final liked = StateProvider((ref) => "") as int;
//LIKE持ち数
final likeAmount = StateProvider((ref) => "") as int;
//投稿リスト (タイトル : 本文)
final postedList = StateProvider((ref) => []) as List<Map<String,String>>;