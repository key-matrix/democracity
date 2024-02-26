import 'package:flutter/material.dart';import 'package:flutter_riverpod/flutter_riverpod.dart';import '../../sampleSources_rbm/model/repository/calculate.dart';import '../../sampleSources_rbm/sampProviders.dart';import '../../sampleSources_rbm/view/view_widget/common_widget/parts/app_bar.dart';import '../../sampleSources_rbm/view/view_widget/common_widget/parts/drawer.dart';import '../../sampleSources_rbm/view/view_widget/common_widget/parts/modal.dart';import '../../sampleSources_rbm/view/view_widget/screen/addmin/camera_view_screen/store_view.dart';import '../../sampleSources_rbm/view/view_widget/screen/addmin/dash_board_screen/dash_board_screen.dart';import '../../sampleSources_rbm/view/view_widget/screen/addmin/profit/calculation.dart';/// Appトップ画面［簡易情報表示-売上、バイトメンバー］class AppTop extends ConsumerStatefulWidget {  const AppTop({Key? key}) : super(key: key);  @override  ConsumerState<AppTop> createState() => _AppTopState();}class _AppTopState extends ConsumerState<AppTop> {  static const _screens = [StoreViewing(), DashBoardScreen(), ProfitScreen()];  int _selectedIndex = 1;  void _onItemTapped(int index) {    // 状態セット    setState(() {      //通知リスト確認      if (ref.watch(noticeListProvider).isNotEmpty &&          ref.watch(checkedNoticeProvider) == false) {        List<String> notices = ref.watch(noticeListProvider);        Modal.noticeModal(          context,          "確認",          //リスト表示  繰り返し表示(Modalで実装)          "${notices.length}件あります。",          ref,        );      }      //画面選択      _selectedIndex = index;    });  }  Calculate calculate = Calculate();  @override  Widget build(BuildContext conte_isObscurext) {    return Scaffold(        endDrawer: const CommonDrawer(),        //表示項目　設定ドロワ損益計算グラフ　[勤務メンバー（詳細リンク）,スタンバイメンバー］、客数（滞在時間、使用金額、注文履歴）        appBar: PreferredSize(          preferredSize: const Size.fromHeight(50),          //当日、前日売上amount表示   todo 要件確認  animation(右から流れる表示)          child: CommonAppbar(            calculate.sumAllDay(ref).toString(),          ),        ),        body: _screens[_selectedIndex],        bottomNavigationBar: BottomNavigationBar(          currentIndex: _selectedIndex,          onTap: _onItemTapped,          items: const <BottomNavigationBarItem>[            BottomNavigationBarItem(                icon: Icon(Icons.video_camera_front), label: 'view'),            BottomNavigationBarItem(                icon: Icon(Icons.dashboard), label: 'dashBord'),            BottomNavigationBarItem(                icon: Icon(Icons.paid_outlined), label: 'profit'),            // BottomNavigationBarItem(icon: Icon(Icons.person), label: 'アカウント'),          ],          type: BottomNavigationBarType.fixed,        ));  }}