import 'package:flutter/material.dart';
import 'package:swipe/style/colors.dart';

class CategoryButton extends StatelessWidget {
  final String category;
  final int index;
  final int selectedCategoryIndex;
  final Function(int) onCategorySelected;

  const CategoryButton({super.key,
    required this.category,
    required this.index,
    required this.selectedCategoryIndex,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    final selected = selectedCategoryIndex == index;

    return InkWell(
      onTap: () {
        onCategorySelected(index);
      },
      child: Container(
        height: 32,
        padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 5),
        decoration: BoxDecoration(
          color: selected ? null : white,
          border: selected
              ? null
              : Border.all(
            color: blueaccentA4,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
          gradient: selected
              ? const LinearGradient(
            colors: [
              gradientgreenlight1,
              gradientgreenlight2,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
              : null,
        ),
        child: Text(
          category,
          style: TextStyle(
            color: selected ? white : blueaccentA4,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'Montserrat',
          ),
        ),
      ),
    );
  }
}

