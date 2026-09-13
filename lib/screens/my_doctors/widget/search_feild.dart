import 'package:flutter/material.dart';

class SearchFeild extends StatelessWidget {
  final IconData? lIcon;
  final String Text_feild;
  final IconData? ricon;
  final bool? hastextcolor;
  final Color? textColor;

  const SearchFeild({
    super.key,
    this.lIcon,
    required this.Text_feild,
    this.ricon, this.hastextcolor, this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: TextField(
        // style: const TextStyle(color: Color(0xff0EBE7F)),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          iconColor: const Color(0xff677294),
          hintStyle: hastextcolor == true
              ? TextStyle(color: textColor)
              : const TextStyle(color: Color(0xff677294)),
          prefixIcon: lIcon != null ? Icon(lIcon) : null,
          suffixIcon: ricon != null ? Icon(ricon) : null,
          hintText: Text_feild,
        ),
      ),
    );
  }
}
