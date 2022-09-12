import 'package:flutter/material.dart';

import '../theme.dart';

class CityCard extends StatelessWidget {
  final String city;
  final String imageUrl;
  final bool isPopular;

  const CityCard({
    Key? key,
    required this.city,
    required this.imageUrl,
    this.isPopular = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 150,
      margin: const EdgeInsets.only(
        top: 16,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: const Color(0xffF6F7F8),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(18),
            ),
            child: Container(
              width: 120,
              height: 102,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imageUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: isPopular
                  ? Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                          color: kPurpleColor,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                          ),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/icon_star.png',
                            width: 22,
                          ),
                        ),
                      ),
                    )
                  : const SizedBox(),
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          Center(
            child: Text(
              city,
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          )
        ],
      ),
    );
  }
}
