import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../component/color.dart';

class KalenderIzin extends StatefulWidget {
  const KalenderIzin({super.key});

  @override
  State<KalenderIzin> createState() => _KalenderIzinState();
}

class _KalenderIzinState extends State<KalenderIzin> {
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

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const Text("Tanggal Izin"),
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
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                  const SizedBox(width: 8),
                                  const Icon(Icons.calendar_today),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
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
                                    style: const TextStyle(fontSize: 16),
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
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showBottomSheet(context);
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Tanggal Izin',
                style: TextStyle(color: Colors.black, fontSize: 14)),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
              child: Row(children: [
                Icon(Icons.calendar_today_outlined,
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
