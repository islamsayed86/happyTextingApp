import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/constants/images_paths.dart';
import 'package:happy_texting/core/constants/styles.dart';
import 'package:happy_texting/core/widgets/custom_container.dart';
import 'package:happy_texting/core/widgets/shared_side_menu.dart';
import 'package:happy_texting/features/auth_feature/presentation/widgets/dashboard_containers_leading_title.dart';
import 'package:happy_texting/features/auth_feature/presentation/widgets/recent_campaigns_titles_container.dart';
import 'package:happy_texting/features/auth_feature/presentation/widgets/cartesian_chart.dart';
import 'package:happy_texting/features/auth_feature/presentation/widgets/dashboard_chart.dart';
import 'package:happy_texting/features/auth_feature/presentation/widgets/colored_dashboard_container.dart';
import 'package:happy_texting/features/auth_feature/presentation/widgets/recent_camaigns_item.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const SideMenu(),
        appBar: AppBar(
          toolbarHeight: 90.h,
          backgroundColor: kDarkBlue,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            statusBarColor: kDarkBlue,
          ),
          title: Padding(
            padding: EdgeInsets.only(right: 15.sp),
            child: Image.asset(
              kAppBarImage,
              scale: 1.1.sp,
            ),
          ),
        ),
        backgroundColor: kLightGrey1,
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: [
              Column(
                children: [
                  GridView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0.sp,
                      mainAxisSpacing: 10.0.sp,
                    ),
                    children: const [
                      ColoredDashboardContainer(
                        background: kLightBlueColor2,
                        number: '6,979',
                        subtitle: 'Active Subscribers',
                      ),
                      ColoredDashboardContainer(
                        background: kDarkBlue,
                        number: '2,163',
                        subtitle: 'New Subscribers this period',
                      ),
                      ColoredDashboardContainer(
                        background: kRedColor,
                        number: '43',
                        subtitle: 'Active Textwords',
                      ),
                      ColoredDashboardContainer(
                        background: kYellowColor,
                        number: '2,163',
                        subtitle: 'Campaigns Sent This Period',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: kLightGrayColor, width: 1.w),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      children: [
                        const DashboardContainersleadingTitle(
                          leftTitle: 'SUBSCRIBE GRWOTH OVER TIME',
                          rightTitle: '',
                        ),
                        SizedBox(
                          height: 58.h,
                        ),
                        const CartesianChart(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 19.5.h,
                  ),
                  CustomContainer(
                    hight: 372.h,
                    child: Column(
                      children: [
                        const DashboardContainersleadingTitle(
                          leftTitle: 'TEXT USAGE',
                          rightTitle: 'Upgrade plan',
                        ),
                        SizedBox(
                          height: 43.h,
                        ),
                        DashboardChart(
                          textUsage: 'Standard Texts',
                          upgradePlan: 'Used 9,461 of 50,000',
                          dataUsageStratingPoint: .25,
                          percentageValue: 18.9,
                          leftPaing: 24.5.sp,
                          rightPadding: 12.5.sp,
                        ),
                        SizedBox(
                          height: 29.h,
                        ),
                        DashboardChart(
                          textUsage: 'Rollover Texts',
                          upgradePlan: 'Used 0 of 73,040',
                          dataUsageStratingPoint: 0,
                          percentageValue: 0,
                          leftPaing: 13.5.sp,
                          rightPadding: 0,
                        ),
                        SizedBox(
                          height: 25.sp,
                        ),
                        RichText(
                          text: const TextSpan(
                            text: 'Your text usage will reset back to zero on:',
                            style: kText16MediumGrey2,
                            children: <TextSpan>[
                              TextSpan(
                                text: '\nAugust 20th.',
                                style: TextStyle(color: kLightBlueColor2),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 17.h,
                        ),
                        const Text(
                          'Send textwords to 833-884-9669 to sign up\nfor your text list(s).',
                          style: kText16MediumGrey2,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 17.h,
              ),
              CustomContainer(
                hight: 383.h,
                child: Column(
                  children: [
                    const DashboardContainersleadingTitle(
                      leftTitle: 'RECENT CAMAIGNS',
                      rightTitle: 'View All',
                    ),
                    const RecentCampaignsTitlesContainer(),
                    SizedBox(
                      height: 19.68.h,
                    ),
                    const RecentCampaignsItem(
                      textWords: 'hamden',
                      date: ' "July 6, 2021\n@10:15 am",',
                      number: '653',
                      status: 'Send',
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    const RecentCampaignsItem(
                      textWords: 'hamden',
                      date: ' "July 6, 2021\n@10:15 am",',
                      number: '653',
                      status: 'Send',
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    const RecentCampaignsItem(
                      textWords: 'hamden',
                      date: ' "July 6, 2021\n@10:15 am",',
                      number: '653',
                      status: 'Send',
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    const RecentCampaignsItem(
                      textWords: 'hamden',
                      date: ' "July 6, 2021\n@10:15 am",',
                      number: '653',
                      status: 'Send',
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    const RecentCampaignsItem(
                      textWords: 'hamden',
                      date: ' "July 6, 2021\n@10:15 am",',
                      number: '653',
                      status: 'Send',
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
