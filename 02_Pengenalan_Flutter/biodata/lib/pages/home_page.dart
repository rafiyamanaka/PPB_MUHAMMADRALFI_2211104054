import 'package:biodata/theme.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      backgroundColor: blueColor,
      body: SafeArea(child: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Image.asset('assets/images/pic.png',
            height: 80,
            width: 80,
            ),
            SizedBox(height: 20,),
            Text(
              'Muhamad Ralfi',
              style: TextStyle(fontSize: 20, color: whiteColor),
            ),
            SizedBox(height: 2,),
            Text(
              'UI/UX and Web Developer',
              style: TextStyle(
                color: lightBlueColor,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40),

                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Education',
                    style: titleTextStyle,
                  ),
                  SizedBox(height: 16,),
                  Row(children: [
                    Image.asset(
                      'assets/images/TelU.png',
                      width: 55,
                      height: 55,
                      ),
                      SizedBox(width: 12,),
                      
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text('Telkom University', style: titleTextStyle,),
                        Text('Software Engineer Bachelor', style: subtitleStyle.copyWith(
                          color: blackColor,
                        ),)
                      ],),
                      Spacer(),
                      Text('Now', style: subtitleStyle,)
                  ],),
                  SizedBox(height: 16,),
                  Row(children: [
                    Image.asset(
                      'assets/images/Muhamka.png',
                      height: 55,
                      width: 55,
                      ),
                      SizedBox(width: 12,),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('SMK MUHAMKA', style: titleTextStyle,),
                        Text('Computer and Network...', style: subtitleStyle.copyWith(
                          color: blackColor,
                        ),)
                        ],
                      ),
                      Spacer(),
                      Text('2021', style: subtitleStyle,)
                  ],),
                  SizedBox(height: 30,),
                  // About me
                  Text('About Me', style: titleTextStyle,),

                  SizedBox(height: 16,),
                  Row(children: [
                    Image.asset(
                      'assets/images/Ig.png',
                      height: 55,
                      width: 55,
                      ),
                      SizedBox(width: 12,),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Instagram', style: titleTextStyle,),
                        Text('_Istrall', style: subtitleStyle)
                        ],
                      ),
                  ],),
                  SizedBox(height: 12,),
                  Row(children: [
                    Image.asset(
                      'assets/images/linkdin.png',
                      height: 55,
                      width: 55,
                      ),
                      SizedBox(width: 12,),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('LinkedIn', style: titleTextStyle,),
                        Text('linkedin/in/MuhammadRalfi', style: subtitleStyle)
                        ],
                      ),
                  ],),
                  SizedBox(height: 12,),
                  Row(children: [
                    Image.asset(
                      'assets/images/git.png',
                      height: 55,
                      width: 55,
                      ),
                      SizedBox(width: 12,),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Github', style: titleTextStyle,),
                        Text('rafiyamanaka', style: subtitleStyle)
                        ],
                      ),
                  ],),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}