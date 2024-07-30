import 'package:flutter/material.dart';

class SelectableButton extends StatelessWidget {
  final String title;
  final int index;
  final bool isSelected;
  final VoidCallback onPressed;

  const SelectableButton({
    super.key,
    required this.title,
    required this.index,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: isSelected ? Colors.orange : Colors.transparent,
            width: 1.5,
          ),
        ),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          foregroundColor:
              isSelected ? Colors.orange : Colors.grey, // Text color
          // backgroundColor: isSelected ? Colors.transparent : Colors.grey[300], // Background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        child: Text(title),
      ),
    );
  }
}
