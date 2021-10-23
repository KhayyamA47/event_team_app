import 'package:event_team_app/pages/verify/components/count_and_resend.dart';
import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';
import 'package:sizer/sizer.dart';

class OtpInput extends StatefulWidget {

  final Function function;
  final ValueChanged<String> valueChanged;

  const OtpInput({Key key, this.function, this.valueChanged}) : super(key: key);

  @override
  _OtpInputState createState() => _OtpInputState(function, valueChanged);
}

class _OtpInputState extends State<OtpInput> {
  Function function;
  ValueChanged<String> valueChanged;

  _OtpInputState(this.function, this.valueChanged);

  @override
  Widget build(BuildContext context) {
    return PinEntryTextField(
      showFieldAsBox: false,
      fields: 6,
      fieldWidth: 11.5.w,
      fontSize: 16.sp,
      onSubmit: (String pin) {
        widget.valueChanged(pin);
      },
    );
  }
}

