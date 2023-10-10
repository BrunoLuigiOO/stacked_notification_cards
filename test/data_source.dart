import '../lib/src/model/notification_card.dart';
import 'package:flutter/material.dart';

List<NotificationCard> dataList1 = [
  NotificationCard(
    key: Key('card 1'),
    title: Text(
      'Today',
      style: TextStyle(
        fontFamily: 'Roboto',
      ),
    ),
    mainInfo: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: Text(
            '\$',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16.0,
            ),
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: '50',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 32.0,
              ),
              children: [
                TextSpan(
                  text: '.99',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
    secondaryInfo: Text(
      'Request in progress\nPayments may take a few days to be reviewed. You can messageyour site for further status updates',
      style: TextStyle(
        fontFamily: 'Roboto',
      ),
    ),
    trailing: Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Text(
        'DETAILS',
        style: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 12.0,
          decoration: TextDecoration.underline,
        ),
      ),
    ),
    onTap: () {},
  ),
];

List<NotificationCard> dataList2 = [
  NotificationCard(
    key: Key('card 1'),
    title: Text(
      'Today',
      style: TextStyle(
        fontFamily: 'Roboto',
      ),
    ),
    mainInfo: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: Text(
            '\$',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16.0,
            ),
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: '50',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 32.0,
              ),
              children: [
                TextSpan(
                  text: '.99',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
    secondaryInfo: Text(
      'Request in progress\nPayments may take a few days to be reviewed. You can messageyour site for further status updates',
      style: TextStyle(
        fontFamily: 'Roboto',
      ),
    ),
    trailing: Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Text(
        'DETAILS',
        style: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 12.0,
          decoration: TextDecoration.underline,
        ),
      ),
    ),
    onTap: () {},
  ),
  NotificationCard(
    key: Key('card 2'),
    title: Text(
      'Today',
      style: TextStyle(
        fontFamily: 'Roboto',
      ),
    ),
    mainInfo: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: Text(
            '\$',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16.0,
            ),
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: '50',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 32.0,
              ),
              children: [
                TextSpan(
                  text: '.99',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
    secondaryInfo: Text(
      'Request in progress\nPayments may take a few days to be reviewed. You can messageyour site for further status updates',
      style: TextStyle(
        fontFamily: 'Roboto',
      ),
    ),
    trailing: Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Text(
        'DETAILS',
        style: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 12.0,
          decoration: TextDecoration.underline,
        ),
      ),
    ),
    onTap: () {},
  ),
];

List<NotificationCard> dataList3 = [
  NotificationCard(
    key: Key('card 1'),
    title: Text(
      'Today',
      style: TextStyle(
        fontFamily: 'Roboto',
      ),
    ),
    mainInfo: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: Text(
            '\$',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16.0,
            ),
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: '50',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 32.0,
              ),
              children: [
                TextSpan(
                  text: '.99',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
    secondaryInfo: Text(
      'Request in progress\nPayments may take a few days to be reviewed. You can messageyour site for further status updates',
      style: TextStyle(
        fontFamily: 'Roboto',
      ),
    ),
    trailing: Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Text(
        'DETAILS',
        style: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 12.0,
          decoration: TextDecoration.underline,
        ),
      ),
    ),
    onTap: () {},
  ),
  NotificationCard(
    key: Key('card 2'),
    title: Text(
      'Today',
      style: TextStyle(
        fontFamily: 'Roboto',
      ),
    ),
    mainInfo: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: Text(
            '\$',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16.0,
            ),
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: '50',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 32.0,
              ),
              children: [
                TextSpan(
                  text: '.99',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
    secondaryInfo: Text(
      'Request in progress\nPayments may take a few days to be reviewed. You can messageyour site for further status updates',
      style: TextStyle(
        fontFamily: 'Roboto',
      ),
    ),
    trailing: Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Text(
        'DETAILS',
        style: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 12.0,
          decoration: TextDecoration.underline,
        ),
      ),
    ),
    onTap: () {},
  ),
  NotificationCard(
    key: Key('card 3'),
    title: Text(
      'Today',
      style: TextStyle(
        fontFamily: 'Roboto',
      ),
    ),
    mainInfo: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: Text(
            '\$',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16.0,
            ),
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: '50',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 32.0,
              ),
              children: [
                TextSpan(
                  text: '.99',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
    secondaryInfo: Text(
      'Request in progress\nPayments may take a few days to be reviewed. You can messageyour site for further status updates',
      style: TextStyle(
        fontFamily: 'Roboto',
      ),
    ),
    trailing: Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Text(
        'DETAILS',
        style: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 12.0,
          decoration: TextDecoration.underline,
        ),
      ),
    ),
    onTap: () {},
  ),
];
