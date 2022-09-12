import 'package:cozy/theme.dart';
import 'package:cozy/widgets/facilities_card.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final int? price;

  const DetailsPage({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Stack(
        children: [
          Image.asset(
            imageUrl,
            width: double.infinity,
            height: 350,
            fit: BoxFit.cover,
          ),
          ListView(
            children: [
              const SizedBox(
                height: 290,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  color: kWhiteColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: blackTextStyle.copyWith(
                                  fontSize: 22,
                                  fontWeight: medium,
                                ),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: '\$$price',
                                  style: purpleTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: medium,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: ' / month',
                                      style: greyTextStyle.copyWith(
                                        fontSize: 16,
                                        fontWeight: light,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/icon_star.png',
                                width: 20,
                              ),
                              Image.asset(
                                'assets/icon_star.png',
                                width: 20,
                              ),
                              Image.asset(
                                'assets/icon_star.png',
                                width: 20,
                              ),
                              Image.asset(
                                'assets/icon_star.png',
                                width: 20,
                              ),
                              Image.asset(
                                'assets/icon_star.png',
                                width: 20,
                                color: kGreyColor2,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Main Facilities',
                            style: blackTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              FacilitiesCard(
                                imageUrl: 'assets/icon_kitchen.png',
                                amount: 2,
                                type: ' Kitchen',
                              ),
                              FacilitiesCard(
                                imageUrl: 'assets/icon_bedroom.png',
                                amount: 3,
                                type: ' Bedroom',
                              ),
                              FacilitiesCard(
                                imageUrl: 'assets/icon_cupboard.png',
                                amount: 3,
                                type: ' Big Lemari',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Text(
                            'Photos',
                            style: blackTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 24,
                              ),
                              Image.asset(
                                'assets/photo1.png',
                                width: 110,
                                height: 88,
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              Image.asset(
                                'assets/photo2.png',
                                width: 110,
                                height: 88,
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              Image.asset(
                                'assets/photo3.png',
                                width: 110,
                                height: 88,
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              Image.asset(
                                'assets/photo4.png',
                                width: 110,
                                height: 88,
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              Image.asset(
                                'assets/photo5.png',
                                width: 110,
                                height: 88,
                              ),
                              const SizedBox(
                                width: 24,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Location',
                            style: blackTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Jln. Kappan Sukses No. 20\nPalembang',
                                style: greyTextStyle,
                              ),
                              Image.asset(
                                'assets/btn_map.png',
                                width: 40,
                                height: 40,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 40,
                      ),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: kPurpleColor,
                      ),
                      child: TextButton(
                        onPressed: (() {}),
                        child: Text(
                          'Book Now',
                          style: whiteTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: medium,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 60,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/btn_back.png',
                    width: 40,
                  ),
                ),
                Image.asset(
                  'assets/btn_wishlist.png',
                  width: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
