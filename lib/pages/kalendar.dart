import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../component/color.dart';

class Kalendar extends StatefulWidget {
  const Kalendar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _KalendarState createState() => _KalendarState();
}

class _KalendarState extends State<Kalendar> {
  DateTime? _startDate;
  DateTime? _endDate;

  Future<void> _selectDate(BuildContext context, bool isStartDate) async {
    DateTime initialDate = DateTime.now();
    DateTime firstDate = DateTime(2000);
    DateTime lastDate = DateTime(2101);

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

//
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Image.asset('assets/avatars/Vector (1).png',
                    height: 18, width: 18),
                const SizedBox(width: 10),
                const Text('Performa Kehadiran',
                    style: TextStyle(
                        color: AppColors.secondary,
                        fontWeight: FontWeight.w700,
                        fontSize: 18)),
              ]),
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Theme(
                data: Theme.of(context).copyWith(
                  dividerColor: Colors.transparent,
                ),
                child: ExpansionTile(
                  title: const Text(
                    "Pilih Tanggal",
                    style: TextStyle(color: Colors.white),
                  ),
                  iconColor: Colors.white,
                  collapsedIconColor: Colors.white,
                  // expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  // childrenPadding: EdgeInsets.zero,
                  // dividerColor: Colors.transparent,
                  children: [
                    // SizedBox(height: 40),
                    Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(
                        children: [
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // Tanggal Awal
                              Column(
                                children: [
                                  const Text("Tanggal Awal"),
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
                                            style:
                                                const TextStyle(fontSize: 16),
                                          ),
                                          const SizedBox(width: 8),
                                          const Icon(Icons.calendar_today),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Tanggal Akhir
                              Column(
                                children: [
                                  const Text("Tanggal Akhir"),
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
                                            style:
                                                const TextStyle(fontSize: 16),
                                          ),
                                          const SizedBox(width: 8),
                                          const Icon(Icons.calendar_today),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Align(
                            alignment: Alignment.centerRight,
                            child: ElevatedButton(
                              onPressed: () {
                                // Action for submit button
                              },
                              child: const Text("Submit"),
                            ),
                          ),
                        ],
                      ),
                    ),
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
