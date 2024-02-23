//ルート画面
import 'package:democratize_app/views/login/login_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/liverpod/liverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //AppName
      title: ref.watch(appNameProvider),
      //ダークテーマ
      theme: ThemeData.dark(
          // primarySwatch: Colors.teal,
          ),
      //ルート画面
      home: const LoginTop(), //  AppTop()から変更
    );
  }
}
