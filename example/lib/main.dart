import 'package:flutter/material.dart';
import 'package:stacked_notification_cards/stacked_notification_cards.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const kBlackColor = Color(0xFF240106);
  List<NotificationCard> _listOfNotification = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 5; i++) {
      _listOfNotification.add(
        NotificationCard(
          key: UniqueKey(),
          title: Text(
            'Reimbursement',
            maxLines: 1,
            style: TextStyle(
              fontFamily: 'Roboto',
              color: kBlackColor.withOpacity(0.4),
            ),
          ),
          subtitle: Text(
            'Today',
            maxLines: 1,
            style: TextStyle(
              fontFamily: 'Roboto',
              color: kBlackColor.withOpacity(0.4),
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
                    color: kBlackColor,
                  ),
                ),
              ),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    text: (5 * i).toString(),
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 32.0,
                      color: kBlackColor,
                    ),
                    children: [
                      TextSpan(
                        text: '.99',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16.0,
                          color: kBlackColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          secondaryInfo: Text(
            'Request in progress',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              color: kBlackColor.withOpacity(0.4),
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
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Stacked Notification Card',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StackedNotificationCards(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 2.0,
                  offset: Offset(0, 2),
                )
              ],
              notificationCards: [..._listOfNotification],
              cardColor: Color(0xFFF1F1F1),
              padding: 16.0,
              actionTitle: Text(
                'Notifications',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              showLessAction: Text(
                'Show less',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
