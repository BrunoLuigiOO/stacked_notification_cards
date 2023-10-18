import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:stacked_notification_cards/src/constants.dart';

import '../model/notification_card.dart';

/// [LastNotificationCard] is the topmost card on the stack

class LastNotificationCard extends StatelessWidget {
  final AnimationController controller;
  final NotificationCard notification;
  final int totalCount;
  final double cornerRadius;
  final Color color;
  final double height;
  final List<BoxShadow>? boxShadow;
  final double padding;

  const LastNotificationCard({
    Key? key,
    required this.controller,
    required this.notification,
    required this.totalCount,
    required this.color,
    required this.cornerRadius,
    required this.height,
    required this.boxShadow,
    required this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: totalCount > 1 && controller.value <= 0.4,
      child: Material(
        color: Colors.transparent,
        child: Container(
          key: ValueKey('LastNotificationCard'),
          margin: EdgeInsets.symmetric(horizontal: padding),
          height: height,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(cornerRadius),
            boxShadow: boxShadow,
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              key: ValueKey('onTapExpand'),
              onTap: () {
                Slidable.of(context)?.close();
                controller.forward();
              },
              child: Stack(
                children: [
                  Transform.translate(
                    offset: Tween<Offset>(
                      begin: Offset(0, 15),
                      end: Offset(0, 10),
                    )
                        .animate(
                          CurvedAnimation(
                            parent: controller,
                            curve: Interval(0.0, 0.2),
                          ),
                        )
                        .value,
                    child: Visibility(
                      visible: controller.value <= 0.2,
                      child: IgnorePointer(
                        ignoring: true,
                        child: ListTile(
                          title: notification.mainInfo,
                          subtitle: notification.secondaryInfo,
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Tween<Offset>(
                      begin: Offset(0, 10),
                      end: Offset(0, 50),
                    )
                        .animate(
                          CurvedAnimation(
                            parent: controller,
                            curve: Interval(0.2, 0.4),
                          ),
                        )
                        .value,
                    child: Visibility(
                      visible: controller.value >= 0.2,
                      child: ListTile(
                        title: notification.mainInfo,
                        subtitle: notification.secondaryInfo,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0.0,
                    bottom: 8.0,
                    child: Opacity(
                      opacity: Tween(begin: 1.0, end: 0.0)
                          .animate(
                            CurvedAnimation(
                              parent: controller,
                              curve: Interval(0.0, 0.2),
                            ),
                          )
                          .value,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 4.0,
                        ),
                        child: Text(
                          '+ ${totalCount - 1}',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: kUnselectedColor.shade800,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
