// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../../../component/color.dart';

class MemilihJenisCuti extends StatefulWidget {
  const MemilihJenisCuti({super.key});

  @override
  State<MemilihJenisCuti> createState() => _MemilihJenisCutiState();
}

class _MemilihJenisCutiState extends State<MemilihJenisCuti> {
  String _selectedOption = '';

  void _showBottomSheetCuti(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.white),
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
                        const Text('Pilih Jenis Cuti',
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
                  
                  // container 2
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedOption = 'Cuti Reguler';
                            });
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 6),
                            child: Container(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Cuti Reguler'),
                                  if (_selectedOption == 'Cuti Reguler')
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
                              _selectedOption = 'Cuti Menikah';
                            });
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 6),
                            child: Container(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Cuti Menikah'),
                                  if (_selectedOption == 'Cuti Menikah')
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
                              _selectedOption = 'Cuti Istri Melahirkan';
                            });
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 6),
                            child: Container(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Cuti Istri Melahirkan'),
                                  if (_selectedOption ==
                                      'Cuti Istri Melahirkan')
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
                              _selectedOption = 'Cuti Hamil';
                            });
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 6),
                            child: Container(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Cuti Hamil'),
                                  if (_selectedOption == 'Cuti Hamil')
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
                              _selectedOption = 'Cuti Khitan Anak';
                            });
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 6),
                            child: Container(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Cuti Khitan Anak'),
                                  if (_selectedOption == 'Cuti Khitan Anak')
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
                              _selectedOption = 'Cuti Orang Tua Meninggal';
                            });
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 6),
                            child: Container(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Cuti Orang Tua Meninggal'),
                                  if (_selectedOption ==
                                      'Cuti Orang Tua Meninggal')
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
                              _selectedOption = 'Cuti Haji';
                            });
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 6),
                            child: Container(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Cuti Haji'),
                                  if (_selectedOption == 'Cuti Haji')
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
                              _selectedOption = 'Cuti Umroh';
                            });
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 6),
                            child: Container(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Cuti Umroh'),
                                  if (_selectedOption == 'Cuti Umroh')
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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showBottomSheetCuti(context);
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Jenis', style: TextStyle(color: Colors.black, fontSize: 14)),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
              child: Row(children: [
                Icon(Icons.calendar_today,
                    size: 20, color: AppColors.secondary),
                SizedBox(width: 8),
                Text(
                  'Pilih Disini',
                  style: TextStyle(color: AppColors.secondary, fontSize: 14),
                ),
                Spacer(),
                Icon(Icons.arrow_drop_down,
                    size: 20, color: AppColors.secondary),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
