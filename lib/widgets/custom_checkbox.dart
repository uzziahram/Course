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
      padding: const EdgeInsets.all(5),
      child: Material(
        color: value ? Colors.yellow : Colors.grey[0], // background toggle
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12), // ripple respects radius
          onTap: () {
            onChanged(!value);
          },
          child: ListTile(
            title: Text(title),
            trailing: Icon(
              value ? checkedIcon : uncheckedIcon,
            ),
          ),
        ),
      ),
    );
  }
}

