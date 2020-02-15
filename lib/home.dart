import 'package:flutter/material.dart';
import 'package:flutter_layout_demo/widget/image.dart';
import 'package:flutter_layout_demo/widget/tab.dart';
import 'package:flutter_layout_demo/widget/text.dart';
import 'widget/button.dart';

class MainHomePage extends StatefulWidget {
  final String title = "Flutter学习";
  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  final List<ListItem> items = [
    new ListItem(Icons.radio_button_checked, "按钮", "简单的按钮使用", (context) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ButtonPage()));
    }),
    new ListItem(Icons.text_fields, "文字", "简单的文字使用", (context) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => TextPage()));
    }),
    new ListItem(Icons.image, "图片", "简单的图片使用", (context) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ImagePage()));
    }),
    new ListItem(Icons.tab, "选项卡", "简单的选项卡使用", (context) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => TabPage()));
    }),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SizedBox(
          child: ListView.separated(
            scrollDirection: Axis.vertical, // 方向
            separatorBuilder: (BuildContext context, int index) =>
                Divider(height: 1.0, color: Colors.grey), // 添加分割线,
            itemCount: items.length, // 列表个数
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(items[index].title), // item 标题
                subtitle: Text(items[index].subTitle), // item 副标题
                leading: Icon(items[index].icon), // item 前置图标
                trailing: Icon(Icons.keyboard_arrow_right), // item 后置图标
                contentPadding: EdgeInsets.only(
                    left: 10, right: 10, top: 5, bottom: 5), // item 内容内边距
                isThreeLine: false, // item 是否三行显示   true时item高度会变高
                dense: true, // item 直观感受是整体大小
                enabled: true, // 是否点击禁用状态
                selected: false, // item 是否选中状态
                onTap: () {
                  items[index].onPressed(context); // item onTap 点击事件
                },
                onLongPress: () {
                  print('长按:$index');
                }, // item onLongPress 长按事件
              );
            },
          ),
        ),
      ),
    );
  }
}

// 创建json model/ 字段类型/  定义数据源类型
class ListItem {
  final IconData icon;
  final String title;
  final String subTitle;
  final ContextCallback onPressed;

  // 常量构造函数
  const ListItem(this.icon, this.title, this.subTitle, this.onPressed);
}

// 没理解这样做的原因
typedef ContextCallback = void Function(BuildContext context);
