/*
 * @Author: zhuchuanyong
 * @Date: 2020-05-10 13:10:17
 * @LastEditors: zhuchuanyong
 * @LastEditTime: 2020-05-10 13:34:21
 * @FilePath: \lib\model\postJsonDemo.dart
 */

class PostJson {
  final int id;
  final String title;
  final String  description;
  final String author;
  final String imageUrl;
  PostJson({this.description,this.title,this.author,this.id,this.imageUrl});

  PostJson.fromJson(Map json):title=json['title'],
  id=json['id'],
  description=json['description'],
  author=json['author'],
  imageUrl=json['imageUrl'];

  Map toJson()=>{
    'title':title,
    'description':description,
    'id':id,
    'author':author,
    'imageUrl':imageUrl,
  };
}
