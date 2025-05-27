
import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({super.key});

  @override
  State<HeightSelector> createState() => _HeightSelector();
}

class _HeightSelector extends State<HeightSelector> {
  double height = 170; //Altura Inicial
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("ALTURA", style: TextStyles.bodyText,),
        Text("$height cm" ,style: TextStyles.bodyText,),
        Slider(value: height, onChanged: (value) {
          setState(() {
            height = value;
          });
        },
        min:130,
        max:220,
        divisions: 90,
        label: "$height",
        activeColor: AppColors.primary,)
      ],
    );
  }
}