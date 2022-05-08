import 'package:flutter/material.dart';

import 'button_home.dart';

class FilterHome extends StatelessWidget {
  const FilterHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonHome(
            isSelected: true,
            text: 'Salads',
            onTap: () {},
          ),
          ButtonHome(
            isSelected: false,
            text: 'Soups',
            onTap: () {},
          ),
          ButtonHome(
            isSelected: false,
            text: 'Grilled',
            onTap: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.filter_alt_outlined,
            ),
          ),
        ],
      ),
    );
  }
}
