import 'package:flutter/material.dart';
import 'package:intern_task_7/constants.dart';
import 'package:intern_task_7/widgets/call_tile.dart';

class CallsPage extends StatefulWidget {
  @override
  _CallsPageState createState() => _CallsPageState();
}

List<String> phoneNumbers = [
  "2134566787",
  "123456767",
  "234324",
  "234234234",
  "23423423",
  "234234234"
];

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TabBar(
                tabs: [
                  Tab(
                    text: 'Incoming',
                  ),
                  Tab(
                    text: 'Outgoing',
                  ),
                  Tab(
                    text: 'Missed',
                  ),
                ],
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            IncomingPage(),
            OutgoingPage(),
            MissedPage(),
          ],
        ),
      ),
    );
  }
}

class IncomingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return CallTile(phoneNumbers[index], TypeOfCall.Recieved);
      },
    );
  }
}

class OutgoingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return CallTile(phoneNumbers[index], TypeOfCall.Outgoing);
      },
    );
  }
}

class MissedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return CallTile(phoneNumbers[index], TypeOfCall.Missed);
      },
    );
    ;
  }
}
