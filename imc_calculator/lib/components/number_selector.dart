import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class NumberSelector extends StatefulWidget {
  //Aqui definimos las variables que recibira mi componente
  final String title;
  final int value;
  final Function() onIncrement;
  final Function() onDecrease;

  // A mi constructor le pasamos todos los valores que recibimos desde afuera
  const NumberSelector({
    super.key,
    required this.title,
    required this.onIncrement,
    required this.onDecrease,
    required this.value,
  });

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backgroundComponent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(widget.title, style: TextStyles.bodyText),
            Text(widget.value.toString(), style: TextStyles.numberText),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    widget.onDecrease();
                  },
                  shape: CircleBorder(),
                  backgroundColor: AppColors.primary,
                  child: Icon(Icons.remove, color: Colors.white),
                ),
                SizedBox(width: 12),
                FloatingActionButton(
                  onPressed: () {
                    widget.onIncrement();
                  },
                  shape: CircleBorder(),
                  backgroundColor: AppColors.primary,
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
