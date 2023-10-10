import 'package:flutter/material.dart';

class NotificationCard {
  final Key key;
  final Widget? title;
  final Widget? subtitle;
  final Widget mainInfo;
  final Widget? secondaryInfo;
  final Widget? trailing;
  final Function()? onTap;

  const NotificationCard({
    required this.key,
    this.title,
    this.subtitle,
    required this.mainInfo,
    this.secondaryInfo,
    this.trailing,
    this.onTap,
  });
}
