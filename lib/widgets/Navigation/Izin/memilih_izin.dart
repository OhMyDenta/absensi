// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../../component/color.dart';

class MemilihIzin extends StatefulWidget {
  const MemilihIzin({super.key});

  @override
  State<MemilihIzin> createState() => _MemilihIzinState();
}

class _MemilihIzinState extends State<MemilihIzin> {
  String _selectedOption = '';

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.white),
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  const Text('Pilih Jenis Izin',
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
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedOption = 'Izin Sakit';
                  });
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 6),
                  child: Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Izin Sakit'),
                        if (_selectedOption == 'Izin Sakit') 
                          const Icon(Icons.check, color: AppColors.secondary),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedOption = 'Izin Tidak Masuk'; 
                  });
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 6),
                  child: Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Izin Tidak Masuk'),
                        if (_selectedOption == 'Izin Tidak Masuk')
                          const Icon(Icons.check, color: AppColors.secondary),
                      ],
                    ),
                  ),
                ),
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
        _showBottomSheet(context);
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
