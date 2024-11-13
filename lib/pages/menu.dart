import 'package:alterindo/widgets/Navigation/absensi/absen_pages.dart';
import 'package:alterindo/widgets/Navigation/history%20absen/history_absensi.dart';
import 'package:alterindo/widgets/Navigation/history_cuti/history_cuti.dart';
import 'package:alterindo/widgets/Navigation/cuti/pengajuan_cuti.dart';
import 'package:alterindo/widgets/Navigation/Izin/pengajuan_izin.dart';
import 'package:flutter/material.dart';

import '../component/color.dart';
import '../widgets/Navigation/history_izin/history_izin.dart';

class MenuPages extends StatelessWidget {
  const MenuPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          // border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(14),
          boxShadow: const [
            BoxShadow(color: Colors.grey, spreadRadius: 0.001, blurRadius: 5),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AbsenPages(),
                          ),
                        );
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: AppColors.bluegrey,
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Image.asset('assets/avatars/jam.png'),
                        ),
                      ),
                    ),
                    const Text('Absensi\n  ',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 14))
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HistoryAbsensi(),
                          ),
                        );
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: AppColors.bluegrey,
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child:
                              Image.asset('assets/avatars/history absen.png'),
                        ),
                      ),
                    ),
                    const Text('Histori\nAbsensi',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 14))
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PengajuanIzin()));
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: AppColors.bluegrey,
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Image.asset('assets/avatars/izin.png'),
                        ),
                      ),
                    ),
                    const Text('Pengajuan\nIzin',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 14))
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PengajuanCuti(),
                          ),
                        );
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: AppColors.bluegrey,
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child:
                              Image.asset('assets/avatars/kalender cuti.png'),
                        ),
                      ),
                    ),
                    const Text('Pengajuan\nCuti',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 14))
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HistoryIzin()));
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: AppColors.bluegrey,
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Image.asset(
                              'assets/avatars/history cuti dan izin.png'),
                        ),
                      ),
                    ),
                    const Center(
                      child: Text('Histori\nPengajuan\nIzin',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 14)),
                    )
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HistoryCuti()));
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: AppColors.bluegrey,
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Image.asset(
                              'assets/avatars/history cuti dan izin.png'),
                        ),
                      ),
                    ),
                    const Text('Histori\nPengajuan\nCuti',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 14))
                  ],
                ),
                
                const SizedBox(height: 45, width: 80),
                const SizedBox(height: 45, width: 80),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
