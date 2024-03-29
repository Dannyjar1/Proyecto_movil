import 'package:flutter/material.dart';
import 'package:reserva_de_canchas/app/modules/booking_field/widgets/single_time_picker_builder.dart';

import '../../../core/values/colors.dart';

class UnselectedTime extends StatelessWidget {
  const UnselectedTime({
    Key? key,
    required this.hour,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;
  final String hour;

  @override
  Widget build(BuildContext context) {
    return SingleTimePickerBuilder(
      onTap: onTap,
      backgroundColor: Colors.white,
      borderColor: blue,
      hour: hour,
      hourColor: Colors.black,
    );
  }
}
