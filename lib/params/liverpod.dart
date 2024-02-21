import 'package:riverpod/riverpod.dart';

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
//住まいの地域
final userState = StateProvider((ref) => 0) as int;
//興味,関心タグ
final curiousTag = StateProvider((ref) => "") as String;
//課金判定
final accountPaymentState = StateProvider((ref) => "") as bool;
//ドネーション可能額
final donatableAmount = StateProvider((ref) => "") as int;
//アクティブ判定(1-5　で判定)
final active = StateProvider((ref) => "") as int;