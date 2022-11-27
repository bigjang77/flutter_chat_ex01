import 'package:flutter/material.dart';

import '../models/user.dart';

class OtherChat extends StatelessWidget {
  const OtherChat(
      {Key? key,
      required this.name,
      required this.text,
      required this.time,
      required this.num})
      : super(key: key);

  final String name;
  final String text;
  final String time;
  final int num;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage:
                    NetworkImage(friends[num].backgroundImage), // 1
              ),
              SizedBox(width: 10),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name),
                    Container(
                      child: Text(text),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 5),
              Container(
                child: Text(time, style: TextStyle(fontSize: 12)),
                padding: EdgeInsets.only(top: 40),
              )
            ],
          ),
        ],
      ),
    );
  }
}
