import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String updatedAt;

  const TipsCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.updatedAt,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                updatedAt,
                style: greyTextStyle.copyWith(
                  fontWeight: light,
                ),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chevron_right,
              color: kGreyColor,
            ),
          ),
        ],
      ),
    );
  }
}
