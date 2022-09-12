import 'package:cozy/theme.dart';
import 'package:cozy/widgets/bottom_navbar_item.dart';
import 'package:cozy/widgets/city_card.dart';
import 'package:cozy/widgets/space_card.dart';
import 'package:cozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 24,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore Now',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              'Mencari kosan yang cozy',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
            ),
          ],
        ),
      );
    }

    Widget popularCities() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: defaultMargin,
              ),
              child: Text(
                'Popular Cities',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  SizedBox(
                    width: 24,
                  ),
                  CityCard(
                    city: 'Jakarta',
                    imageUrl: 'assets/city1.png',
                  ),
                  CityCard(
                    city: 'Bandung',
                    imageUrl: 'assets/city2.png',
                    isPopular: true,
                  ),
                  CityCard(
                    city: 'Surabaya',
                    imageUrl: 'assets/city3.png',
                  ),
                  CityCard(
                    city: 'Palembang',
                    imageUrl: 'assets/city4.png',
                  ),
                  CityCard(
                    city: 'Aceh',
                    imageUrl: 'assets/city5.png',
                    isPopular: true,
                  ),
                  CityCard(
                    city: 'Bogor',
                    imageUrl: 'assets/city6.png',
                  ),
                  SizedBox(
                    width: 4,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget recomendedSpace() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //NOTE: RECOMENDED SPACE TEXT
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recommended Space',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const SpaceCard(
                    imageUrl: 'assets/space1.png',
                    title: 'Kuretakeso Hott',
                    price: 52,
                    city: 'Bandung, Germany',
                    rating: 4,
                  ),
                  const SpaceCard(
                    imageUrl: 'assets/space2.png',
                    title: 'Roemah Nenek',
                    price: 11,
                    city: 'Seattle, Bogor',
                    rating: 5,
                  ),
                  const SpaceCard(
                    imageUrl: 'assets/space3.png',
                    title: 'Darrling How',
                    price: 20,
                    city: 'Jakarta, Indonesia',
                    rating: 3,
                  ),
                  const SpaceCard(
                    imageUrl: 'assets/space4.png',
                    title: 'Orang Crown',
                    price: 552,
                    city: 'Halla, Sumatra',
                    rating: 5,
                  ),
                  const SpaceCard(
                    imageUrl: 'assets/space5.png',
                    title: 'City of Cactus',
                    price: 20,
                    city: 'Jakarta, Indonesia',
                    rating: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget tips() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tips & Guidance',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const TipsCard(
              imageUrl: 'assets/tips1.png',
              title: 'City Guidelines',
              updatedAt: 'Updated 20 Apr',
            ),
            const TipsCard(
              imageUrl: 'assets/tips2.png',
              title: 'Jakarta Fairship',
              updatedAt: 'Updated 11 Dec',
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      );
    }

    Widget customBottomNavbar() {
      return Container(
        width: MediaQuery.of(context).size.width - (2 * 24),
        height: 65,
        margin: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        decoration: BoxDecoration(
          color: kBottomNavbarColor,
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            BottomNavbarItem(
              imageUrl: 'assets/icon_home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_email.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_card.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_love.png',
              isActive: false,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            header(),
            popularCities(),
            recomendedSpace(),
            tips(),
          ],
        ),
      ),
      floatingActionButton: customBottomNavbar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
