import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
      ),
      body: Column(
        //测试Row对齐方式，排除Column默认居中对齐的干扰
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('默认Text'),
          Text(
            '文本对齐方式 -命只有一条，但要命的事，可不止一件 -命只有一条，但要命的事，可不止一件',
            textAlign: TextAlign.right, // 文本对齐方式
          ),
          Text(
            'softWrap 是否自动换行（true自动换行，false单行显示，超出屏幕部分默认截断处理)',
            softWrap: false,
          ),
          Text(
            '文本加粗 Flutter',
            maxLines: 1, //最大行数
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold, // 加粗
            ),
          ),
          Text(
            '文本溢出处理 Flutter allows you to build beautiful native apps on iOS and Android from a single codebase.',
            overflow: TextOverflow.ellipsis, // 溢出处理，这里ellipsis将多余的内容设置为...
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
                'Flutter allows you to build beautiful native apps on iOS and Android from a single codebase.'),
          ),
          Text(
            'Flutter allows you to build beautiful native apps on iOS and Android from a single codebase.',
            style: TextStyle(
                // 文本样式
                color: Colors.red,
                // 文本颜色
                fontSize: 20,
                // 字体大小
                fontWeight: FontWeight.w600,
                // 字体粗细程度
                fontStyle: FontStyle.italic,
                // 字体样式
                letterSpacing: 2,
                // 字母或字间距
                wordSpacing: 5,
                // 单词间距
                height: 2,
                // 行高，值为字体大小的倍数
                fontFamily: 'serif'),
          ),
          Text(
            '带阴影文本',
            style: TextStyle(
              /// 阴影
              shadows: [
                Shadow(color: Colors.red, offset: Offset(1, 1), blurRadius: 5)
              ],
            ),
          ),
          Text(
            '文本虚下划线',
            style: TextStyle(
              decoration: TextDecoration.underline, // 文本装饰，下划线
              decorationColor: Colors.blue, // 文本装饰颜色
              decorationStyle: TextDecorationStyle.dotted, // 文本装饰样式，虚线
            ),
          ),
          Text(
            '文本双删除线',
            style: TextStyle(
              decoration: TextDecoration.lineThrough,
              // 文本装饰，删除线
              decorationColor: Colors.blue,
              // 文本装饰颜色
              decorationStyle: TextDecorationStyle.double,
              // 文本装饰样式，双划线
              fontSize: 25.0,
              // 字号
              color: const Color(0xffff9900), // 文字颜色
            ),
          ),
          Text(
            '文本上划线',
            style: TextStyle(
                decoration: TextDecoration.overline,
                // 文本装饰，上划线
                decorationColor: Colors.red,
                // 文本装饰颜色
                decorationStyle: TextDecorationStyle.solid,
                // 文本装饰样式
                fontSize: 15.0,
                // 字号
                fontStyle: FontStyle.italic,
                // 字体样式，倾斜
                fontFamily: 'serif'),
          ),
        ],
      ),
    );
  }
}
