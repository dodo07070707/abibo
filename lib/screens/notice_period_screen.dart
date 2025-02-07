//NoticePeriodScreen.dart
import 'package:flutter/material.dart';
import '../widgets/custom_text.dart';
import '../functions/notification.dart';
import '../theme/color_theme.dart';
import '../theme/text_theme.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NoticePeriodScreen extends StatefulWidget {
  const NoticePeriodScreen({super.key});

  @override
  State<NoticePeriodScreen> createState() => _NoticePeriodScreenState();
}

class _NoticePeriodScreenState extends State<NoticePeriodScreen> {
  late SharedPreferences prefs;
  Set<String> periods = {};

  Future<void> getPeriod() async {
    prefs = await SharedPreferences.getInstance();
    periods = (prefs.getStringList('periods') ?? ['0d', '1d', '3d', '7d', '1m'])
        .toSet();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getPeriod();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth / 390 * 26,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight / 844 * 52,
              ),
              IconButton(
                iconSize: 23,
                color: ABColors.MAIN_THEME,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back),
              ),
              SizedBox(
                height: screenHeight / 844 * 16,
              ),
              const CustomText(
                text: '알림 발송 주기를\n설정하세요',
                style: ABTextTheme.NoticePeriodTitle,
              ),
              SizedBox(
                height: screenHeight / 844 * 22,
              ),
              Container(
                height: screenWidth / 390 * 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFF1F1F1),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 0.5,
                    color: Colors.black.withOpacity(0.1),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      if (!periods.add('0d')) {
                        periods.remove('0d');
                      }
                    });
                  },
                  child: Row(
                    children: [
                      const CustomText(
                        text: '당일 00:00',
                        style: ABTextTheme.NoticePeriodTimeButton,
                      ),
                      const Spacer(),
                      if (periods.contains('0d'))
                        const Icon(
                          Icons.check,
                          color: Colors.black,
                          size: 16,
                        ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight / 844 * 8,
              ),
              Container(
                height: screenWidth / 390 * 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFF1F1F1),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 0.5,
                    color: Colors.black.withOpacity(0.1),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      if (!periods.add('1d')) {
                        periods.remove('1d');
                      }
                    });
                  },
                  child: Row(
                    children: [
                      const CustomText(
                          text: '24시간 전',
                          style: ABTextTheme.NoticePeriodTimeButton),
                      const Spacer(),
                      if (periods.contains('1d'))
                        const Icon(
                          Icons.check,
                          color: Colors.black,
                          size: 16,
                        ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight / 844 * 8,
              ),
              Container(
                height: screenWidth / 390 * 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFF1F1F1),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 0.5,
                    color: Colors.black.withOpacity(0.1),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      if (!periods.add('3d')) {
                        periods.remove('3d');
                      }
                    });
                  },
                  child: Row(
                    children: [
                      const CustomText(
                          text: '3일 전',
                          style: ABTextTheme.NoticePeriodTimeButton),
                      const Spacer(),
                      if (periods.contains('3d'))
                        const Icon(
                          Icons.check,
                          color: Colors.black,
                          size: 16,
                        ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight / 844 * 8,
              ),
              Container(
                height: screenWidth / 390 * 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFF1F1F1),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 0.5,
                    color: Colors.black.withOpacity(0.1),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      if (!periods.add('7d')) {
                        periods.remove('7d');
                      }
                    });
                  },
                  child: Row(
                    children: [
                      const CustomText(
                          text: '7일 전',
                          style: ABTextTheme.NoticePeriodTimeButton),
                      const Spacer(),
                      if (periods.contains('7d'))
                        const Icon(
                          Icons.check,
                          color: Colors.black,
                          size: 16,
                        ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight / 844 * 8,
              ),
              Container(
                height: screenWidth / 390 * 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFF1F1F1),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 0.5,
                    color: Colors.black.withOpacity(0.1),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      if (!periods.add('1m')) {
                        periods.remove('1m');
                      }
                    });
                  },
                  child: Row(
                    children: [
                      const CustomText(
                          text: '한 달 전',
                          style: ABTextTheme.NoticePeriodTimeButton),
                      const Spacer(),
                      if (periods.contains('1m'))
                        const Icon(
                          Icons.check,
                          color: Colors.black,
                          size: 16,
                        ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight / 844 * 23,
              ),
              ElevatedButton(
                onPressed: () async {
                  if (periods.isEmpty) return;

                  await prefs.setStringList(
                      "periods", periods.toList(growable: false)..sort());
                  await updatePeriod();
                  setState(() {});
                  Get.back();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: SizedBox(
                  width: double.maxFinite,
                  height: screenWidth / 390 * 60,
                  child: const Center(
                    child: CustomText(
                      text: '설정하기',
                      style: ABTextTheme.NoticePeriodButton,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
