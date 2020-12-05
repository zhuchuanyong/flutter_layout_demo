/*
 * @Author: zhuchuanyong
 * @Date: 2020-12-05 01:12:01
 * @LastEditors: zhuchuanyong
 * @LastEditTime: 2020-12-06 00:21:53
 * @FilePath: \lib\demo\chip_demo.dart
 */
import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  ChipDemo({Key key}) : super(key: key);

  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = ['Apple', "banana", "Lemon"];

  String _action = "Nothing";
  List<String> _selected = [];

  String _choice = 'Lemon';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: <Widget>[
                Chip(
                  label: Text('Life'),
                ),
                Chip(
                  label: Text('Sunset'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('zhuchuanyong'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text('朱'),
                  ),
                ),
                Chip(
                  label: Text('魔童降世-哪吒'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1607193592166&di=9a797a2fcc1ece1de2fa273271c5cb59&imgtype=0&src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201908%2F13%2F20190813215118_jhwig.thumb.400_0.jpeg'),
                  ),
                ),
                Chip(
                  label: Text('City'),
                  onDeleted: () {},
                ),
                Chip(
                  label: Text('City'),
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.redAccent,
                  deleteButtonTooltipMessage: "移除",
                  onDeleted: () {},
                ),
                Divider(
                  color: Colors.grey,
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((e) {
                    return Chip(
                      label: Text(e),
                      onDeleted: () {
                        setState(() {
                          _tags.remove(e);
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Container(
                  width: double.infinity,
                  child: Text('$_action'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((e) {
                    return ActionChip(
                      label: Text(e),
                      onPressed: () {
                        setState(() {
                          _action = e;
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Container(
                  width: double.infinity,
                  child: Text('filter ${_selected.toString()}'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((e) {
                    return FilterChip(
                      label: Text(e),
                      selected: _selected.contains(e),
                      onSelected: (v) {
                        setState(() {
                          if (_selected.contains(e)) {
                            _selected.remove(e);
                          } else {
                            _selected.add(e);
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Container(
                  width: double.infinity,
                  child: Text('_choice ${_choice}'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((e) {
                    return ChoiceChip(
                      label: Text(e),
                      selected: _choice == e,
                      selectedColor: Colors.black,
                      onSelected: (v) {
                        setState(() {
                          _choice = e;
                        });
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: () {
          setState(() {
            _tags = ['Apple', "banana", "Lemon"];
            _selected = [];
            _choice = "Lemon";
          });
        },
      ),
    );
  }
}
