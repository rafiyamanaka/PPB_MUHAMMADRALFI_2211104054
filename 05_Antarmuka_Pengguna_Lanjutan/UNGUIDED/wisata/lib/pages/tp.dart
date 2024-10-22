import 'package:biodata/theme.dart';
import 'package:flutter/material.dart';

class TpPage extends StatelessWidget {
  const TpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Sliver App Bar with flexible space
          SliverAppBar(
            expandedHeight: 200,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Wisata Banyumas',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/7/7f/Baturraden_overview_from_ridge%2C_Purwokerto%2C_2015-03-23.jpg',
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.7),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Popular Places Section
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tempat Populer',
                    style: titleTextStyle,
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ),

          // Horizontal Scrolling Popular Places
          SliverToBoxAdapter(
            child: Container(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16),
                children: [
                  _buildPopularPlaceCard(
                    'Lokawisata Baturraden',
                    'Wisata alam pegunungan dengan pemandian air panas',
                    'https://upload.wikimedia.org/wikipedia/commons/7/7f/Baturraden_overview_from_ridge%2C_Purwokerto%2C_2015-03-23.jpg',
                  ),
                  _buildPopularPlaceCard(
                    'Small World',
                    'Taman miniatur dengan replika landmark dunia',
                    'https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcQMHHBmNqul6zXQNvtIecIZQFEVpTRuyIkOytASmw-TuBt9etzvFxoDn0V-IBhxFDz_tun286IdbTqUeI76V71wfLr9IR4Uw0cUgrEe1hc',
                  ),
                  _buildPopularPlaceCard(
                    'Curug Telu',
                    'Air terjun alami dengan 3 tingkatan',
                    'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/1035/2024/03/21/Screenshot_2024-03-21-20-43-17-341_comgoogleandroidappsmaps-edit-881358050.jpg',
                  ),
                ],
              ),
            ),
          ),

          // Recommended Places Section
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Rekomendasi Untukmu',
                style: titleTextStyle,
              ),
            ),
          ),

          // List of Recommended Places
          SliverList(
            delegate: SliverChildListDelegate([
              _buildRecommendedPlace(
                'Curug Jenggala',
                'Air terjun dengan tiga tingkatan yang sejajar, menawarkan pemandangan alam yang memukau dan udara yang sejuk.',
                'https://atourin.obs.ap-southeast-3.myhuaweicloud.com/images/destination/banyumas/curug-jenggala-profile1672684018.jpeg',
              ),
              _buildRecommendedPlace(
                'Pancuran Pitu',
                'Tujuh pancuran air panas alami dari Gunung Slamet dengan khasiat penyembuhan.',
                'https://asset.kompas.com/crops/-NT-28oIPFg89Od7jL1ED6oPLzg=/0x0:780x520/750x500/data/photo/2019/04/24/808870688.jpg',
              ),
              _buildRecommendedPlace(
                'The Village',
                'Spot foto Instagram-able dengan arsitektur Eropa dan taman yang indah.',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5Xxr8un0s3N4Jwf2teode8FM2zAa3Vthh4A&s',
              ),
              _buildRecommendedPlace(
                'CAUB Baturraden',
                'Area camping dengan pemandangan gunung yang spektakuler.',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREH8MdoWEisyxk7QdWBlxLSAmM72j1pVvKKw&s',
              ),
              SizedBox(height: 16),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _buildPopularPlaceCard(String title, String subtitle, String imageUrl) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      width: 200,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.network(
                imageUrl,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: titleTextStyle.copyWith(fontSize: 14),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: subtitleStyle.copyWith(fontSize: 12),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecommendedPlace(String title, String description, String imageUrl) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.network(
                  imageUrl,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: titleTextStyle,
                    ),
                    SizedBox(height: 8),
                    Text(
                      description,
                      style: subtitleStyle,
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.location_on, size: 16, color: Colors.blue),
                        SizedBox(width: 4),
                        Text(
                          'Banyumas, Jawa Tengah',
                          style: subtitleStyle.copyWith(color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}