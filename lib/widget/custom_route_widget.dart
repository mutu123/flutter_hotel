import 'package:flutter/material.dart';

class CustomRoute extends PageRouteBuilder {
  final Widget widget;

  CustomRoute(this.widget)
      : super(
            transitionDuration: const Duration(milliseconds: 500),
            pageBuilder: (BuildContext context, Animation<double> animation1,
                Animation<double> animation2) {
              return widget;
            },
            transitionsBuilder: (BuildContext context,
                Animation<double> animation1,
                Animation<double> animation2,
                Widget child) {
              ///左右滑动切换页面
              return SlideTransition(
                position: Tween(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0))
                    .animate(CurvedAnimation(parent: animation1, curve: Curves.fastOutSlowIn)),
                child: child,
              );
//              return SlideTransition(
//                position: Tween(
//                  begin: Offset(1.0, 0.0),
//                  end: Offset(0.0, 0.0),
//                ).animate(CurvedAnimation(
//                    parent: animation1, curve: Curves.fastOutSlowIn)),
//                child: FadeTransition(
//                  opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
//                      parent: animation1, curve: Curves.fastOutSlowIn)),
//                  child: child,
//                ),
//              );
            });
}
