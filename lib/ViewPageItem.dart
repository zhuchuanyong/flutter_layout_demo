import 'package:flutter/material.dart';

class ViewPageItem extends StatefulWidget {
  ViewPageItem({Key key, this.items}) : super(key: key);
  final List<ListItem> items;
  @override
  _ViewPageItemState createState() => _ViewPageItemState();
}

class _ViewPageItemState extends State<ViewPageItem> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        child: ListView.separated(
          scrollDirection: Axis.vertical, // 方向
          separatorBuilder: (BuildContext context, int index) =>
              Divider(height: 1.0, color: Colors.grey), // 添加分割线,
          itemCount: widget.items.length, // 列表个数
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(widget.items[index].title), // item 标题
              subtitle: Text(widget.items[index].subTitle), // item 副标题
              leading: Icon(widget.items[index].icon), // item 前置图标
              trailing: Icon(Icons.keyboard_arrow_right), // item 后置图标
              contentPadding: EdgeInsets.only(
                  left: 10, right: 10, top: 5, bottom: 5), // item 内容内边距
              isThreeLine: false, // item 是否三行显示   true时item高度会变高
              dense: true, // item 直观感受是整体大小
              enabled: true, // 是否点击禁用状态
              selected: false, // item 是否选中状态
              onTap: () {
                Navigator.of(context)
                    .pushNamed(widget.items[index].pageName); // item onTap 点击事件
              },
              onLongPress: () {
                print('长按:$index');
              }, // item onLongPress 长按事件
            );
          },
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
  final String pageName;

  // 常量构造函数
  const ListItem(this.icon, this.title, this.subTitle, this.pageName);
}
