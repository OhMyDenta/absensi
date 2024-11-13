import 'package:alterindo/widgets/Navigation/history_izin/halaman_panding.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../component/color.dart';
import '../../../component/image.dart';
import 'halama_accepted.dart';

class HistoryIzin extends StatefulWidget {
  const HistoryIzin({super.key});

  @override
  State<HistoryIzin> createState() => _HistoryIzinState();
}

class _HistoryIzinState extends State<HistoryIzin> {
  String _selectedOption = '';

  DateTime? _startDate;
  DateTime? _endDate;

  Future<void> _selectDate(BuildContext context, bool isStartDate) async {
    DateTime initialDate = DateTime.now();
    DateTime firstDate = DateTime(1945);
    DateTime lastDate = DateTime(3000);

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );
    if (picked != null && picked != initialDate) {
      setState(() {
        if (isStartDate) {
          _startDate = picked;
        } else {
          _endDate = picked;
        }
      });
    }
  }

  void _showBottomSheet1(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5.0, horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          const Text(
                            'Pilih Tanggal',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w800),
                          ),
                          const Spacer(),
                          IconButton(
                              icon: const Icon(
                                Icons.close,
                                size: 20,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              })
                        ]),
                      ),
                      const SizedBox(height: 8),
                      Container(
                          width: double.infinity,
                          height: 1,
                          decoration: const BoxDecoration(
                            color: AppColors.grey,
                          )),
                      const SizedBox(height: 8),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Dari Tanggal:"),
                          GestureDetector(
                            onTap: () => _selectDate(context, true),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 12),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    _startDate != null
                                        ? DateFormat('dd-MM-yyyy')
                                            .format(_startDate!)
                                        : 'DD-MM-YYYY',
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                  const Spacer(),
                                  const Icon(Icons.calendar_today,
                                      color: Colors.grey),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Sampai Tanggal:"),
                          GestureDetector(
                            onTap: () => _selectDate(context, false),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 12),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    _endDate != null
                                        ? DateFormat('dd-MM-yyyy')
                                            .format(_endDate!)
                                        : 'DD-MM-YYYY',
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                  const Spacer(),
                                  const Icon(Icons.calendar_today,
                                      color: Colors.grey),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.blue,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 2),
                              child: Text("Submit",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12))),
            padding: const EdgeInsets.all(16),
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // container 1
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          const Text('Pilih Tanggal',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              )),
                          const Spacer(),
                          IconButton(
                            icon: const Icon(
                              Icons.close,
                              size: 24,
                              color: AppColors.secondary,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 8),
                    Container(
                        width: double.infinity,
                        height: 1,
                        decoration: const BoxDecoration(
                          color: AppColors.grey,
                        )),
                    const SizedBox(height: 8),
                    // container 2
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedOption = 'Semua Tanggal';
                                  });
                                  Navigator.pop(context);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 6),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text('Semua Tanggal'),
                                        if (_selectedOption == 'Semua Tanggal')
                                          const Icon(Icons.check,
                                              color: AppColors.secondary),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              // 7
                              const SizedBox(height: 10),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedOption = '7 Hari Terakhir';
                                  });
                                  Navigator.pop(context);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 6),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text('7 Hari Terakhir'),
                                        if (_selectedOption ==
                                            '7 Hari Terakhir')
                                          const Icon(Icons.check,
                                              color: AppColors.secondary),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              // 30
                              const SizedBox(height: 10),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedOption = '30 Hari Terakhir';
                                  });
                                  Navigator.pop(context);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 6),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text('30 Hari Terakhir'),
                                        if (_selectedOption ==
                                            '30 Hari Terakhir')
                                          const Icon(Icons.check,
                                              color: AppColors.secondary),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              // 60
                              const SizedBox(height: 10),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedOption = '60 Hari Terakhir';
                                  });
                                  Navigator.pop(context);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 6),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text('60 Hari Terakhir'),
                                        if (_selectedOption ==
                                            '60 Hari Terakhir')
                                          const Icon(Icons.check,
                                              color: AppColors.secondary),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),

                              // GestureDetector Pilih
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                  _showBottomSheet1(context);
                                },
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 6),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Pilih'),
                                        Icon(Icons.arrow_forward_ios_rounded)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }

  void _showBottomSheet2(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
          padding: const EdgeInsets.all(16),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // container 1
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        const Text('Pilih Jenis Absensi',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            )),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(
                            Icons.close,
                            size: 24,
                            color: AppColors.secondary,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    height: 1,
                    decoration: const BoxDecoration(
                      color: AppColors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // container 2
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedOption = 'Semua Status';
                            });
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 6),
                            child: SizedBox(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Semua Status'),
                                  if (_selectedOption == 'Semua Status')
                                    const Icon(Icons.check,
                                        color: AppColors.secondary),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedOption = 'Pending';
                            });
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 6),
                            child: SizedBox(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Pending'),
                                  if (_selectedOption == 'Pending')
                                    const Icon(Icons.check,
                                        color: AppColors.secondary),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedOption = 'Accepted';
                            });
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 6),
                            child: SizedBox(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Accepted'),
                                  if (_selectedOption == 'Accepted')
                                    const Icon(Icons.check,
                                        color: AppColors.secondary),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedOption = 'Denied';
                            });
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 6),
                            child: SizedBox(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Denied'),
                                  if (_selectedOption == 'Denied')
                                    const Icon(Icons.check,
                                        color: AppColors.secondary),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                      ]),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void panding(BuildContext context) {
    Container(
      decoration: BoxDecoration(
          color: AppColors.threeorange, borderRadius: BorderRadius.circular(4)),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 2, horizontal: 7),
        child: Center(
          child: Text(
            'Panding',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 9),
          ),
        ),
      ),
    );
  }

  void accepted(BuildContext context) {
    Container(
      decoration: BoxDecoration(
          color: AppColors.three, borderRadius: BorderRadius.circular(4)),
      child: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2, horizontal: 7),
          child: Text(
            'Accepted',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 9),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            textAlign: TextAlign.center,
            'Histori Pengajuan Izin',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        toolbarHeight: 70,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 20, height: 40),
                GestureDetector(
                  onTap: () {
                    _showBottomSheet(context);
                  },
                  child: const SizedBox(
                    child: Row(children: [
                      Text('Semua Tanggal'),
                      Icon(Icons.keyboard_arrow_down)
                    ]),
                  ),
                ),
                const Text('|'),
                GestureDetector(
                  onTap: () {
                    _showBottomSheet2(context);
                  },
                  child: const SizedBox(
                    child: Row(children: [
                      Text('Semua Status'),
                      Icon(Icons.keyboard_arrow_down)
                    ]),
                  ),
                ),
                const SizedBox(width: 20, height: 20),
              ],
            ),
          ),
          // ////////////////////////////////////////////////////////////
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const HalamanPanding())
                      );
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                                  child: Row(children: [
                                    const Icon(Icons.calendar_month,
                                        color: AppColors.secondary, size: 14),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      '25-09-2024',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14),
                                    ),
                                    const Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: AppColors.threeorange,
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 14),
                                        child: Center(
                                          child: Text(
                                            'Panding',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 9),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                                  child: Row(
                                    children: [
                                      Icon(Icons.calendar_today_rounded,
                                          color: AppColors.secondary, size: 14),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        'Izin Sakit',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                                  child: Text(
                                      'Ket: Saya Mengajukan Izin Sakit\nDikarenakan harus bed rest di rumah.'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                                  child: Row(children: [
                                    ClipOval(
                                      //
                                      child: Image.asset(
                                        AImages.profile,
                                        fit: BoxFit.cover,
                                        height: 40,
                                        width: 40,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text('Agus Asmuri',
                                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                                  ]),
                                )
                              ]),
                        )))
              ],
            ),
          )
        ,
        // //////////////////////////////////
        Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const HalamanAccepted())
                      );
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                                  child: Row(children: [
                                    const Icon(Icons.calendar_month,
                                        color: AppColors.secondary, size: 14),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      '02-09-2024',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14),
                                    ),
                                    const Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: AppColors.three,
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 14),
                                        child: Center(
                                          child: Text(
                                            'Accepted',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 9),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                                  child: Row(
                                    children: [
                                      Icon(Icons.calendar_today_rounded,
                                          color: AppColors.secondary, size: 14),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        'Izin Tidak Masuk',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                                  child: Text(
                                      'Ket: Saya Mengajukan Izin Tidak Masuk\nDikarenakan Ada acara keluarga diluar kota'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                                  child: Row(children: [
                                    ClipOval(
                                      //
                                      child: Image.asset(
                                        AImages.profile,
                                        fit: BoxFit.cover,
                                        height: 40,
                                        width: 40,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text('Agus Asmuri',
                                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                                  ]),
                                )
                              ]),
                        )))
              ],
            ),
          )
        
        ],
      ),
    );
  }
}
