import 'package:flutter/material.dart';

import '../../util/styles.dart';

class CardPending extends StatelessWidget {
  const CardPending({
    super.key,
    required this.title,
    required this.subject,
    required this.time,
    required this.color,
    required this.textStyle,
  });
  final String title;
  final String subject;
  final String time;
  final Color color;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      height: MediaQuery.of(context).size.height * 0.10,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(237, 237, 237, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title,
              style: AppStyles.titleSubjecStyle, textAlign: TextAlign.center),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(subject,
                      style: textStyle, textAlign: TextAlign.center)),
              Row(
                children: [
                  const Icon(
                    size: 15,
                    Icons.access_time,
                    color: Colors.orange,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    time,
                    style: AppStyles.timeStyle,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
