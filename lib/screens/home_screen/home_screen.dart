import 'package:brain_school/constants.dart';
import 'package:brain_school/screens/assignment_screen/assignment_screen.dart';
import 'package:brain_school/screens/my_profile/my_profile.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../REST_API/maroon_api/screen_maroon/homemaroons.dart';
import '../REST_API/student_api/screen_student/homestudent.dart';
import '../background_profile/about_me.dart';
import '../contact_me/contact_me.dart';
import '../sertifikasi/sertifikasi.dart';
import 'widgets/student_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //we will divide the screen into two parts
          //fixed height for first half
          Container(
            width: 100.w,
            height: 40.h,
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StudentName(
                          studentName: 'Muhammad Ihsan Rahman',
                        ),
                        kHalfSizedBox,
                        StudentClass(studentClass: '065120147'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                StudentPicture(
                    picAddress: 'assets/images/foto-profile.jpg',
                    onPress: () {
                      // go to profile detail screen here
                      Navigator.pushNamed(context, MyProfileScreen.routeName);
                    }),
              ],
            ),
          ),

          //other will use all the remaining height of screen
          Expanded(
            child: Container(
              width: 100.w,
              decoration: BoxDecoration(
                color: kOtherColor,
                borderRadius: kTopBorderRadius,
              ),
              child: SingleChildScrollView(
                //for padding
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    AboutMePage(), // Replace HomeScreenStudent with the appropriate screen
                              ),
                            );
                          },
                          icon: 'assets/icons/background.png',
                          title: 'Tentang Saya',
                        ),
                        HomeCard(
                          onPress: () {
                            //go to assignment screen here
                            Navigator.pushNamed(
                                context, AssignmentScreen.routeName);
                          },
                          icon: 'assets/icons/mobile-app.png',
                          title: 'Portofolio',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    CertificationPage(), // Replace HomeScreenStudent with the appropriate screen
                              ),
                            );
                          },
                          icon: 'assets/icons/skills.png',
                          title: 'Sertifikasi',
                        ),
                        HomeCard(
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ContactMePage(), // Replace HomeScreenStudent with the appropriate screen
                              ),
                            );
                          },
                          icon: 'assets/icons/communicate.png',
                          title: 'Contact Me',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    HomeScreenmaroons(), // Replace HomeScreenStudent with the appropriate screen
                              ),
                            );
                          },
                          icon: 'assets/icons/api.png',
                          title: 'Maroon API',
                        ),
                        HomeCard(
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    HomeScreenStudent(), // Replace HomeScreenStudent with the appropriate screen
                              ),
                            );
                          },
                          icon: 'assets/icons/api2.png',
                          title: 'Student API',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard(
      {Key? key,
      required this.onPress,
      required this.icon,
      required this.title})
      : super(key: key);
  final VoidCallback onPress;
  final String icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: 1.h),
        width: 40.w,
        height: 20.h,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(kDefaultPadding / 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: SizerUtil.deviceType == DeviceType.tablet ? 40.sp : 50.sp,
              width: SizerUtil.deviceType == DeviceType.tablet ? 40.sp : 50.sp,
              color: kOtherColor,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
