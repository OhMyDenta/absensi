import 'package:alterindo/widgets/login_screen.dart';
import 'package:alterindo/widgets/profile_pages.dart';
import 'package:flutter/material.dart';

import '../../component/color.dart';


class HalamanSetting extends StatefulWidget {
  const HalamanSetting({super.key});

  @override
  State<HalamanSetting> createState() => _HalamanSettingState();
}

class _HalamanSettingState extends State<HalamanSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
        backgroundColor: Colors.white,
      ),
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 6.0,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Container(
                decoration: const BoxDecoration(color: Colors.white),
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/222.jpg',
                          fit: BoxFit.cover,
                          height: 60,
                          width: 60,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Agus Asmuri'),
                          Text('Frontline'),
                        ],
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.logout,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: GestureDetector(
                /////////////////////////////////////////// berpindah halaman dengan container
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfilePages(),
                    ),
                  );
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.person_pin_sharp,
                          size: 12,
                          color: AppColors.secondary,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Personal Informastion'),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.info,
                      size: 12,
                      color: AppColors.secondary,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text('Version'),
                    Spacer(),
                    Text('V 1.0.0'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
