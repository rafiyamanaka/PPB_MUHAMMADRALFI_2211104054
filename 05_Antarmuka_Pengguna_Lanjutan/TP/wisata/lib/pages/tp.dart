import 'package:biodata/theme.dart';
import 'package:flutter/material.dart';


class TpPage extends StatelessWidget {
  const TpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Banyumas', style: subtitleStyle),
            Icon(Icons.person_2_outlined, color: greyColor)
          ],
        ),
      ),
      // backgroundColor: Colors.blues
      body: Padding(padding: EdgeInsets.all(16.0),
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Tempat Populer',
          style: titleTextStyle
          ),
          SizedBox(height: 16,),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 16),
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network('https://upload.wikimedia.org/wikipedia/commons/7/7f/Baturraden_overview_from_ridge%2C_Purwokerto%2C_2015-03-23.jpg',
                        width: double.infinity,
                        height: 125,
                        fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text('Lokawisata Banyumas', style: titleTextStyle,),
                      Text('Purwokerto, Jawa Tengah', style: subtitleStyle,)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 16),
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network('https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcQMHHBmNqul6zXQNvtIecIZQFEVpTRuyIkOytASmw-TuBt9etzvFxoDn0V-IBhxFDz_tun286IdbTqUeI76V71wfLr9IR4Uw0cUgrEe1hc',
                        width: double.infinity,
                        height: 125,
                        fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text('Limpakuwus', style: titleTextStyle,),
                      Text('Purwokerto, Jawa Tengah', style: subtitleStyle,)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 16),
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network('https://lh6.googleusercontent.com/proxy/uPlsJjWHH1xiFupDC7jJN3xTm8BKPIIM2ORnW_4aH8HSnQ57tqa91_1u_vmTrg85TFgh26GH39fR29fBH9weOsXJ1UElhs5MMSEQSpSX2vfy4kiezJeDw01mhFUmFQcRDItK',
                        width: double.infinity,
                        height: 125,
                        fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text('Curug Telu', style: titleTextStyle,),
                      Text('Purwokerto, Jawa Tengah', style: subtitleStyle,)
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Direkomendasikan untuk mu!',
            style: titleTextStyle,
          ),
          SizedBox(height: 16,),
          Expanded(child: Column(
            children: [
              Card(
                margin: EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network('https://atourin.obs.ap-southeast-3.myhuaweicloud.com/images/destination/banyumas/curug-jenggala-profile1672684018.jpeg?x-image-process=image/resize,p_100,limit_1/imageslim',
                      width: 150,
                      height: 100,
                      fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 16,),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Curug Jenggala', style: cardTitleStyle,),
                        Text('Curug Jenggala adalah air terjun yang berlokasi di Ketenger, Baturaden, Banyumas. Curug ini mempunyai tiga air terjun yang tingginya sejajar.', style: cardSubStyle)
                      ],
                    ))
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network('https://asset.kompas.com/crops/-NT-28oIPFg89Od7jL1ED6oPLzg=/0x0:780x520/750x500/data/photo/2019/04/24/808870688.jpg',
                      width: 150,
                      height: 100,
                      fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 16,),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Pancuran Pitu', style: cardTitleStyle,),
                        Text('Pancuran ini merupakan sumber air panas bumi yang terpancar langsung dari kaki Gunung Slamet yang keluar melalui tujuh pancuran', style: cardSubStyle)
                      ],
                    ))
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5Xxr8un0s3N4Jwf2teode8FM2zAa3Vthh4A&s',
                      width: 150,
                      height: 100,
                      fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 16,),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('The Village Purwokerto', style: cardTitleStyle,),
                        Text('Taman bergaya Eropa yang memiliki taman, danau dengan perahu dayung, kelinci, taman bermain & pujasera.', style: cardSubStyle)
                      ],
                    ))
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREH8MdoWEisyxk7QdWBlxLSAmM72j1pVvKKw&s',
                      width: 150,
                      height: 100,
                      fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 16,),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Caub', style: cardTitleStyle,),
                        Text('Caub, yang juga disebut Camp Area Umbul Bengkok, menawarkan destinasi camping yang menyenangkan di tengah pesona alam Baturraden', style: cardSubStyle)
                      ],
                    ))
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network('https://upload.wikimedia.org/wikipedia/commons/7/7f/Baturraden_overview_from_ridge%2C_Purwokerto%2C_2015-03-23.jpg',
                      width: 150,
                      height: 100,
                      fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 16,),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Curug Gomblang', style: cardTitleStyle,),
                        Text('Air terjun ini memiliki tinggi 50 meter. Curug Gomblang mulai dirintis sebagai destinasi wisata sejak September 2015', style: cardSubStyle)
                      ],
                    ))
                  ],
                ),
              ),
            ],
          )),
        ],
      ),
      ),
    );
  }
}