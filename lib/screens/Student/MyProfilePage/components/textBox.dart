import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/utils/utils.dart';

class TextBox extends StatelessWidget {
  final String header;
  final String text;

  const TextBox({Key? key, required this.header, required this.text})
      : super(key: key);

  _copyText(BuildContext context) {
    {
      var snackBar = SnackBar(
        content: Text('$header Copied to Clipboard'),
        duration: const Duration(seconds: 1),
      );
      Clipboard.setData(ClipboardData(text: text)).then((value) =>
          ScaffoldMessenger.of(context)
              .showSnackBar(snackBar)); // -> show a notification
    }
  }

  _getFlexText(context) {
    return Row(
      children: [
        Flexible(
          child: Text(
            text,
            style: SafeGoogleFont(
              'Poppins',
              color: CupertinoColors.label,
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
      child: GestureDetector(
        onTap: () => _copyText(context),
        child: Container(
          decoration: BoxDecoration(
            // color: Colors.white,
            color: Theme.of(context).selectedRowColor,
            border: Border.all(width: 1, color: Theme.of(context).canvasColor),
            borderRadius: BorderRadius.circular(5),
            shape: BoxShape.rectangle,
          ),
          // decoration: getTextBoxDecoration(boxClr!),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$header :",
                  style: SafeGoogleFont(
                    'Poppins',
                    color: CupertinoColors.darkBackgroundGray,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                _getFlexText(context)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
