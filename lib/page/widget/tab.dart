import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  final String title = "选项卡";
  @override
  _TabPageState createState() => _TabPageState();
}

// 使用系统自带 TabController DefaultTabController
// class _TabPageState extends State<TabPage> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text(widget.title),
//           bottom: TabBar(
//             tabs: <Widget>[
//               Tab(
//                 text: '热点',
//               ),
//               Tab(
//                 text: '体育',
//               ),
//               Tab(
//                 text: '科技',
//               ),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: <Widget>[
//             Center(child: Text('热点')),
//             Center(child: Text('体育')),
//             Center(child: Text('科技')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// 自定义TabController
class _TabPageState extends State<TabPage> with SingleTickerProviderStateMixin {
  final List<Tab> mTabs = <Tab>[
    Tab(text: '语文'),
    Tab(text: '数学'),
    Tab(text: '英语')
  ];
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: mTabs.length);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: TabBar(
            controller: _tabController,
            tabs: mTabs,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: mTabs.map((Tab tab) {
            return Center(child: Text(tab.text));
          }).toList(),
        ),
      ),
    );
  }
}
