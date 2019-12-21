import 'package:flutter/material.dart';

class ToogleButtonWidge extends StatefulWidget {
  @override
  _ToogleButtonWidgeState createState() => _ToogleButtonWidgeState();
}

class _ToogleButtonWidgeState extends State<ToogleButtonWidge> {
  // 定义ToogleButton 控制变量
  List<bool> isSelected = [true, false, false];
  List<bool> isSelected2 = [true, false, false];
  List<bool> isSelected3 = [true, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToggleButtons 按钮'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Text('multi-select 多选', textScaleFactor: 2),
            Text('可以不选'),
            ToggleButtons(
              children: <Widget>[
                Icon(Icons.ac_unit),
                Icon(Icons.call),
                Icon(Icons.cake),
              ],
              onPressed: (int index) {
                setState(() {
                  isSelected[index] = !isSelected[index];
                });
              },
              isSelected: isSelected,
            ),
            SizedBox(height: 20),
            Text('multi-select 多选', textScaleFactor: 2),
            Text('只能选一个'),
            ToggleButtons(
              children: <Widget>[
                Icon(Icons.ac_unit),
                Icon(Icons.call),
                Icon(Icons.cake),
              ],
              onPressed: (int index) {
                setState(() {
                  for (var i = 0; i < isSelected2.length; i++) {
                    if (i == index) {
                      isSelected2[i] = !isSelected2[i]; // 使用i 使用index 没效果
                    } else {
                      isSelected2[i] = false;
                    }
                  }
                });
              },
              isSelected: isSelected2,
            ),
            SizedBox(height: 20),
            Text('multi-select 多选', textScaleFactor: 2),
            Text('必须选一个'),
            ToggleButtons(
              children: <Widget>[
                Icon(Icons.ac_unit),
                Icon(Icons.call),
                Icon(Icons.cake),
              ],
              onPressed: (int index) {
                setState(() {
                  int count = 0;
                  isSelected3.forEach((bool val) {
                    if (val) {
                      count++;
                    }
                  });

                  // 只有一个选中并点击是返回不做操作
                  if (isSelected3[index] && count < 2) {
                    return;
                  }
                  setState(() {
                    isSelected3[index] = !isSelected3[index];
                  });
                  // for (var i = 0; i < isSelected3.length; i++) {
                  //   if (i == index) {
                  //     isSelected3[i] = !isSelected3[i]; // 使用i 使用index 没效果
                  //   } else {
                  //     isSelected3[i] = false;
                  //   }
                  // }
                });
              },
              isSelected: isSelected3,
            )
          ],
        ),
      ),
    );
  }
}
