import 'package:democratize_app/views/screen/login/login_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'liverpod.dart';

void main() {
  runApp(
    //監視対象
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //プロバイダ参照
      title: ref.watch(appNameProvider),
      //ダークテーマ
      theme: ThemeData.dark(),
      home: const LoginTop(), //,
    );
  }
}
