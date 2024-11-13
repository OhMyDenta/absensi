import 'package:flutter/material.dart';

import '../../../component/color.dart';
import '../../../component/image.dart';

class HalamanPanding extends StatefulWidget {
  const HalamanPanding({super.key});

  @override
  State<HalamanPanding> createState() => _HalamanPandingState();
}

class _HalamanPandingState extends State<HalamanPanding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Center(
            child: Text(
              'Detail Pengajuan Izin',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 18),
            ),
          ),
          toolbarHeight: 70,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 6),
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.threeorange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 7),
                    child: Center(
                      child: Text(
                        'Pending',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 18),
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 7),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // ////////////Column Teks
                          const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kode Otorisasi',
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(height: 7),
                                Text(
                                  'Tidak Ada Code',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Keterangan Otorisasi',
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(height: 7),
                                Text(
                                  'Belum Ada Keterangan',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Permohonan Izin',
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(height: 7),
                              ]),
                          // //////////////////////////// Lampanr kumorunokarukari
                          Container(
                            width: 160,
                            decoration: BoxDecoration(
                                color: AppColors.bluewhite,
                                borderRadius: BorderRadius.circular(24)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 2),
                              child: Row(
                                children: [
                                  ClipOval(
                                    child: Image.asset(
                                      AImages.profile,
                                      fit: BoxFit.cover,
                                      height: 40,
                                      width: 40,
                                    ),
                                  ),
                                  const SizedBox(width: 6),
                                  const Text(
                                    'Agus Asmuri',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                        ],
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 7),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // ////////////Column Teks
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jenis Izin',
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Icon(Icons.calendar_today,
                                      color: AppColors.secondary, size: 16),
                                  SizedBox(width: 7),
                                  Text(
                                    'Izin Sakit',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Tanggal Izin',
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Icon(Icons.calendar_month,
                                      color: AppColors.secondary, size: 16),
                                  SizedBox(width: 7),
                                  Text(
                                    '25-09-2024',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Keterangan Izin',
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(height: 7),
                              Text(
                                'Saya Mengajukan Izin Sakit \nDikarenakan Harus bed rest dirumah.',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          // //////////////////////////// Lampanr kumorunokarukari

                          SizedBox(height: 8),
                        ],
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 7),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // ////////////Column Teks
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'File Pendukung',
                                style: TextStyle(fontSize: 12),
                              ),
                              Container( 
                              width: 200,
                                decoration: BoxDecoration(
                                  color: AppColors.secondary,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Theme(
                                  data: Theme.of(context).copyWith(
                                      dividerColor: Colors.transparent),
                                  child: ExpansionTile(
                                    title: const Text(
                                      textAlign: TextAlign.center,
                                      'Images',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    iconColor: Colors.white,
                                    collapsedIconColor: Colors.white,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              color: Colors.white),
                                          child: Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Row(
                                              children: [
                                                
                                                SizedBox(
                                                  width: 176,
                                                  child: Image.asset(AImages.surat)),
                                              ]
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            
                            ],
                          ),
                          // //////////////////////////// Lampanr kumorunokarukari

                          const SizedBox(height: 8),
                        ],
                      )),
                ),
              ),
            ]),
          ),
        ));
  }

}
