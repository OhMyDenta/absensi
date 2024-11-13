// ignore_for_file: unused_element, avoid_print

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'scan_qr.dart';

class AbsensiPages extends StatefulWidget {
  const AbsensiPages({super.key});

  @override
  State<AbsensiPages> createState() => _AbsensiPagesState();
}

class _AbsensiPagesState extends State<AbsensiPages> {
  String _currentDate = '';
  String? _absenTimeMasuk;
  String? _absenTimePulang;
  String? _lateDuration;
  bool _hasAbsenMasuk = false;
  bool _hasAbsenPulang = false;

  @override
  void initState() {
    super.initState();
    _updateDate();
    Timer.periodic(const Duration(seconds: 1), (Timer t) => _updateDate());
  }

  void _updateDate() {
    final DateTime now = DateTime.now().toUtc().add(const Duration(hours: 7));
    final String formattedDate = DateFormat('d-M-yyyy').format(now);
    setState(() {
      _currentDate = formattedDate;
    });
  }

  final DateTime _startTimeMorning = DateTime.now()
      .toUtc()
      .add(const Duration(hours: 7))
      .copyWith(hour: 7, minute: 30);
  final DateTime _endTimeMorning = DateTime.now()
      .toUtc()
      .add(const Duration(hours: 7))
      .copyWith(hour: 17, minute: 0);
  final DateTime _endTimeAfternoon = DateTime.now()
      .toUtc()
      .add(const Duration(hours: 7))
      .copyWith(hour: 20, minute: 0);

  void _handleAbsen(String qrData) {
    print("QR Code data: $qrData");
    final DateTime now = DateTime.now().toUtc().add(const Duration(hours: 7));
    final String formattedTime = DateFormat('HH:mm:ss').format(now);

    if (now.isAfter(_startTimeMorning) && now.isBefore(_endTimeMorning)) {
      if (!_hasAbsenMasuk) {
        setState(() {
          _hasAbsenMasuk = true;
          _absenTimeMasuk = formattedTime;
          _lateDuration = _calculateLateDuration(now, true);
        });
        _showAbsenSuccessPopup(formattedTime, "Absensi Masuk");
      } else {
        _showAlreadyAbsenPopup("Anda sudah melakukan absensi masuk.");
      }
    } else if (now.isAfter(_endTimeMorning) &&
        now.isBefore(_endTimeAfternoon)) {
      if (!_hasAbsenPulang) {
        setState(() {
          _hasAbsenPulang = true;
          _absenTimePulang = formattedTime;
        });
        _showAbsenSuccessPopup(formattedTime, "Absensi Pulang");
      } else {
        _showAlreadyAbsenPopup("Anda sudah melakukan absensi pulang.");
      }
    } else {
      _showOutOfTimePopup();
    }
  }

  String? _calculateLateDuration(DateTime absenTime, bool isMorningShift) {
    final DateTime maxTime = isMorningShift
        ? _startTimeMorning.add(const Duration(minutes: 30))
        : _endTimeMorning;
    if (absenTime.isAfter(maxTime)) {
      Duration late = absenTime.difference(maxTime);
      int hoursLate = late.inHours;
      int minutesLate = late.inMinutes % 60;
      int secondsLate = late.inSeconds % 60;
      return 'Terlambat $hoursLate Jam $minutesLate Menit $secondsLate Detik';
    }
    return null;
  }

  void _showAbsenSuccessPopup(String absenTime, String shift) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Row(
            children: [
              Icon(Icons.check_circle, color: Colors.green),
              SizedBox(width: 10),
              Text("Absensi Berhasil"),
            ],
          ),
          content: Text("$shift berhasil pada $absenTime"),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  void _showAlreadyAbsenPopup(String message) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Row(
            children: [
              Icon(Icons.warning, color: Colors.orange),
              SizedBox(width: 10),
              Text("Sudah Absen"),
            ],
          ),
          content: Text(message),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  void _showOutOfTimePopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Row(
            children: [
              Icon(Icons.error, color: Colors.red),
              SizedBox(width: 10),
              Text("Waktu Tidak Valid"),
            ],
          ),
          content: const Text(
              "Absensi hanya dapat dilakukan pada waktu yang ditentukan."),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4),
            child: Row(
              children: [
                Icon(Icons.work, color: Colors.blue, size: 18),
                SizedBox(width: 10),
                Text(
                  "Shift Pagi",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              const Icon(Icons.login, color: Colors.blue),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _absenTimeMasuk ?? "--:--:--",
                    style: const TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    _lateDuration ??
                        'Normal Absensi QR tanggal : $_currentDate',
                  ),
                ],
              ),
            ],
          ),
          // if (_lateDuration != null) ...[
          //   const SizedBox(height: 8),
          //   Text(
          //     _lateDuration!,
          //     style: const TextStyle(
          //         color: Colors.grey, fontWeight: FontWeight.w600),
          //   ),
          // ],
          const SizedBox(height: 16),
          Row(
            children: [
              const Icon(Icons.logout, color: Colors.orange),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _absenTimePulang ?? "--:--:--",
                    style: const TextStyle(fontSize: 16, color: Colors.orange),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Normal Absensi QR tanggal $_currentDate',
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const QRScannerPage()),
                );

                if (result != null) {
                  _handleAbsen(result);
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                "ABSEN",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
