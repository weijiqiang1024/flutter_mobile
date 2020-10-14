// import 'package:flutter/cupertino.dart';
import 'dart:developer';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //输入文本控制
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _width = size.width;
    final _height = size.height;
    //输入框底部变化方法
    var inputUnderline = (color) {
      return UnderlineInputBorder(
          borderSide:
              BorderSide(width: 0.8, color: color, style: BorderStyle.solid));
    };
    return Scaffold(
        body: new SingleChildScrollView(
            child: new ConstrainedBox(
                constraints: new BoxConstraints(
                  minHeight: 120.0,
                ),
                child: Container(
                    width: _width,
                    height: _height,
                    decoration: new BoxDecoration(color: Colors.white),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                      alignment: Alignment.center,
                                      children: <Widget>[
                                        Image.asset(
                                          'images/login_head.png',
                                          width: _width,
                                          fit: BoxFit.cover,
                                        ),
                                        Center(
                                            child: Column(children: [
                                          Text('移动警务系统',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 22.0,
                                                  letterSpacing: 2.0,
                                                  fontWeight: FontWeight.w500,
                                                  shadows: <Shadow>[
                                                    Shadow(
                                                      offset: Offset(3.0, 3.0),
                                                      blurRadius: 4.0,
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, .6),
                                                    ),
                                                  ])),
                                          Text('Mobile Police System',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16.0,
                                                  letterSpacing: 2.0,
                                                  fontWeight: FontWeight.w500,
                                                  shadows: <Shadow>[
                                                    Shadow(
                                                      offset: Offset(3.0, 3.0),
                                                      blurRadius: 4.0,
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, .6),
                                                    )
                                                  ]))
                                        ]))
                                      ])
                                ],
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 20.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        child: Row(children: [
                                          Text('登 录',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w700)),
                                        ]),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(top: 10.0),
                                          child: Divider(
                                            height: 10.0,
                                            thickness: 0.8,
                                            color: Color(0xffD5D5D5),
                                          )),
                                      Form(
                                        key: _formKey,
                                        autovalidate: true,
                                        child: Column(
                                          children: <Widget>[
                                            TextFormField(
                                                // autofocus: true,
                                                controller: _unameController,
                                                style: TextStyle(height: 2.2),
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.only(top: 3.0),
                                                  enabledBorder: inputUnderline(
                                                      Color(0xffD5D5D5)),
                                                  focusedBorder: inputUnderline(
                                                      Colors.blue),
                                                  errorBorder: inputUnderline(
                                                      Colors.red),
                                                  focusedErrorBorder:
                                                      inputUnderline(
                                                          Colors.red),
                                                  // labelText: '用户名',
                                                  hintText: '请输入账号',
                                                  prefixIcon: Icon(Icons.person,
                                                      color: Colors.blue,
                                                      size: 26.0),
                                                ),
                                                // 校验用户名
                                                validator: (v) {
                                                  return v.trim().length > 0
                                                      ? null
                                                      : "账号不能为空";
                                                }),
                                            TextFormField(
                                                autofocus: false,
                                                controller: _pwdController,
                                                style: TextStyle(height: 2.2),
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.only(top: 3.0),
                                                  enabledBorder: inputUnderline(
                                                      Color(0xffD5D5D5)),
                                                  focusedBorder: inputUnderline(
                                                      Colors.blue),
                                                  errorBorder: inputUnderline(
                                                      Colors.red),
                                                  focusedErrorBorder:
                                                      inputUnderline(
                                                          Colors.red),
                                                  // labelText: '密码',
                                                  hintText: '请输入密码',
                                                  prefixIcon: Icon(Icons.lock,
                                                      color: Colors.blue,
                                                      size: 25.0),
                                                ),
                                                obscureText: true,
                                                // 校验用户名
                                                validator: (v) {
                                                  return v.trim().length > 5
                                                      ? null
                                                      : "密码不能少于6位";
                                                }),
                                            //登录按钮
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    2, 60, 2, 0),
                                                width: _width,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                        offset:
                                                            Offset(0.0, 1.0),
                                                        blurRadius: 4.0,
                                                        color: Color.fromRGBO(
                                                            25, 149, 243, .38))
                                                  ],
                                                  gradient: LinearGradient(
                                                      colors: [
                                                        Color.fromRGBO(
                                                            67, 198, 255, 1),
                                                        Color.fromRGBO(
                                                            67, 142, 255, 1)
                                                      ]),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: RaisedButton(
                                                    padding:
                                                        EdgeInsets.all(10.0),
                                                    child: Text('登 录',
                                                        style: TextStyle(
                                                            fontSize: 20.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w100)),
                                                    color: Colors
                                                        .transparent, // 设为透明色
                                                    elevation: 0, // 正常时阴影隐藏
                                                    highlightElevation:
                                                        0, // 点击时阴影隐藏
                                                    textColor: Colors.white,
                                                    onPressed: () {
                                                      print('************');
                                                      if ((_formKey.currentState
                                                              as FormState)
                                                          .validate()) {
                                                        print(_unameController
                                                            .text);
                                                        print(_pwdController
                                                            .text);
                                                        Navigator.pushNamed(
                                                            context, '/home');
                                                      }
                                                    }))
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("©2020 安徽蓝盾光电子股份有限公司",
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 12.0,
                                  ))
                            ],
                          )
                        ])))));
  }
}
