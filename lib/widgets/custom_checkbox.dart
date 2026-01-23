import 'package:flutter/material.dart';


class CustomCheckbox extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;
  final IconData checkedIcon;
  final IconData uncheckedIcon;

  const CustomCheckbox({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
    this.checkedIcon = Icons.check_box,
    this.uncheckedIcon = Icons.check_box_outline_blank,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(5),
      child: ListTile(
        title: Text(title),
        trailing: IconButton(
          icon: Icon(
            value ? checkedIcon : uncheckedIcon,
          ),
          onPressed: () {
            onChanged(!value);
          },
        ),
        onTap: () {
          onChanged(!value);
        },
      ),
    );
  }
}

