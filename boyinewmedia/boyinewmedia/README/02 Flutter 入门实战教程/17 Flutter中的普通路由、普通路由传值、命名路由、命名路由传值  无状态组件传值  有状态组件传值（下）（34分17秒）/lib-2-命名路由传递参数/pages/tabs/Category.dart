import 'package:flutter/material.dart';
import '../Form.dart';


class CategoryPage extends StatefulWidget{
  CategoryPage({Key key}): super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}


class _CategoryPageState extends State<CategoryPage>{

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("跳转到表单页面传值"),
          onPressed: (){

            // 跳转的路由
           /* Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => FormPage(title: "我是跳转传值"),
              )
            );*/

            /*// 以上相当于
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context){
                  return FormPage();
                }
              )
            );*/

            // 使用命名路由跳转
            Navigator.pushNamed(context, '/form');
          },
         color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ]
    );
  }
}