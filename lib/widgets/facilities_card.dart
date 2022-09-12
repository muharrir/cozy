import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class FacilitiesCard extends StatelessWidget {
  final String imageUrl;
  final int amount;
  final String type;

  const FacilitiesCard({
    super.key,
    required this.imageUrl,
    required this.amount,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 32,
        ),
        const SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
            text: amount.toString(),
            style: purpleTextStyle.copyWith(
              fontWeight: medium,
            ),
            children: [
              TextSpan(
                text: type,
                style: greyTextStyle.copyWith(
                  fontWeight: light,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
