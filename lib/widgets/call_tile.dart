import 'package:flutter/material.dart';
import 'package:intern_task_7/constants.dart';

class CallTile extends StatelessWidget {
  final String phoneNumber;
  final TypeOfCall typeOfCall;
  CallTile(this.phoneNumber, this.typeOfCall);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(phoneNumber),
      trailing: getCallIcon(typeOfCall),
    );
  }

  Icon getCallIcon(TypeOfCall typeOfCall) {
    switch (typeOfCall) {
      case TypeOfCall.Missed:
        return Icon(Icons.call_missed);

      case TypeOfCall.Recieved:
        return Icon(Icons.call_received);

      case TypeOfCall.Outgoing:
        return Icon(Icons.call);
      default:
        return Icon(Icons.call);
    }
  }
}
