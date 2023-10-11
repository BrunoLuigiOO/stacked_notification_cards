import 'package:flutter/material.dart';
import 'package:stacked_notification_cards/src/model/notification_card.dart';

/// This widget is responsible for structuring the [NotificationCard].
class NotificationTile extends StatelessWidget {
  final double height;
  final double spacing;
  final double cornerRadius;
  final Color color;
  final NotificationCard notificationCard;
  final EdgeInsets? padding;
  final List<BoxShadow>? boxShadow;

  const NotificationTile({
    Key? key,
    required this.height,
    required this.cornerRadius,
    required this.color,
    required this.spacing,
    required this.notificationCard,
    this.padding,
    this.boxShadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: padding,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(cornerRadius),
        boxShadow: boxShadow,
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(cornerRadius),
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: notificationCard.onTap,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
            child: Column(
              children: [
                const SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: notificationCard.title ?? const SizedBox.shrink(),
                    ),
                    notificationCard.subtitle ?? const SizedBox.shrink()
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          notificationCard.mainInfo,
                          if (notificationCard.secondaryInfo != null)
                            notificationCard.secondaryInfo!,
                        ],
                      ),
                    ),
                    if (notificationCard.trailing != null)
                      notificationCard.trailing!,
                  ],
                ),
                const SizedBox(height: 16.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
