import 'package:day_schedule_list/src/models/schedule_time_of_day.dart';
import 'package:flutter/material.dart';

import 'time_of_day_text.dart';

class TimeOfDayWidget extends StatelessWidget {
  const TimeOfDayWidget({
    required this.scheduleTime,
    required this.height,
    this.timeTextStyle,
    Key? key,
  }) : super(key: key);

  final double height;
  final ScheduleTimeOfDay scheduleTime;
  final TextStyle? timeTextStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TimeOfDayText(
            time: scheduleTime.time,
            availability: scheduleTime.availability,
            timeTextStyle: timeTextStyle,
            context: context,
          ),
          const SizedBox(
            width: 4,
          ),
          const Expanded(
            child: Divider(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
