import 'package:flutter/material.dart';

class SearchFeild extends StatelessWidget {
  final IconData? lIcon;
  final String Text_feild;
  final IconData? ricon;

  const SearchFeild({
    super.key,
    this.lIcon,
    required this.Text_feild,
    this.ricon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: TextField(
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
          prefixIcon: lIcon != null ? Icon(lIcon) : null,
          suffixIcon: ricon != null ? Icon(ricon) : null,
          hintText: Text_feild,
        ),
      ),
    );
  }
}
