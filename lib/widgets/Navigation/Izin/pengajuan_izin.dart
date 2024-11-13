import 'package:flutter/material.dart';

import '../../../component/color.dart';
import '../../../component/image.dart';
import 'kalender_izin.dart';
import 'memilih_izin.dart';
import 'text_Keterangan.dart';
import 'upload_file.dart';

class PengajuanIzin extends StatefulWidget {
  const PengajuanIzin({super.key});

  @override
  State<PengajuanIzin> createState() => _PengajuanIzinState();
}

class _PengajuanIzinState extends State<PengajuanIzin> {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                topLeft: Radius.circular(12),
              )),
          padding: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
            child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.check_circle_sharp,
                      color: AppColors.three,
                      size: 24,
                    ),
                    const SizedBox(height: 10),
                    const Text('Pengajuan Cuti Berhasil',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 22)),
                    const SizedBox(height: 8),
                    const Text('Menunggu Otorisasi',
                        style: TextStyle(color: AppColors.three, fontSize: 12)),
                    const SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 6.0, horizontal: 14),
                            child: Text('OK',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          )),
                    )
                  ]),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const  Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              Text(
                'Pengajuan Izin',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                ),
                // textAlign: TextAlign.center,
              ),
              
            ],
          ),
        ),
        toolbarHeight: 70,

      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.secondary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),

                      child: ExpansionTile(
                        title: const Text(
                          'Data Pemohonan Izin',
                          style: TextStyle(color: Colors.white),
                        ),
                        iconColor: Colors.white,
                        collapsedIconColor: Colors.white,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              decoration:
                                  const BoxDecoration(color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('NIP',
                                            style: TextStyle(fontSize: 12)),
                                        Text('NIP0001',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700)),
                                        SizedBox(height: 5),
                                        Text('Nama',
                                            style: TextStyle(fontSize: 12)),
                                        Text('Agus Asmuri',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700)),
                                        SizedBox(height: 5),
                                        Text('Jabatan',
                                            style: TextStyle(fontSize: 12)),
                                        Text('Frontliner',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700)),
                                      ],
                                    ),
                                    Image.asset(AImages.profile,
                                        width: 80, height: 80),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  
                  ),
                  
                  const SizedBox(height: 10),
                  const MemilihIzin(),
                  const SizedBox(height: 10),
                  const KalenderIzin(),
                  const SizedBox(height: 10),
                  const TextKeterangan(),
                  const SizedBox(height: 10),
                  UploadFileWidget(),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
          // tombol
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: GestureDetector(
                onTap: () {
                  _showBottomSheet(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: AppColors.secondary,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'AJUKAN IZIN',
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
