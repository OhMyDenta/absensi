import 'package:flutter/material.dart';

import '../../../component/color.dart';
import '../../../component/image.dart';
import 'component/custom_expansionTile.dart';

class ListviewAbsen extends StatefulWidget {
  const ListviewAbsen({super.key});

  @override
  State<ListviewAbsen> createState() => _ListviewAbsenState();
}

class _ListviewAbsenState extends State<ListviewAbsen> {
  final List<Map<String, dynamic>> absensiList = [
    {
      "tanggal": "24-09-2024",
      "status": "Masuk WFO",
      "detail": {
        "datang": "08:00:40 WIB",
        "pulang": "17:20:55 WIB",
        "lokasi": "Alternindo Software (Pusat)"
      },
    },
    {
      "tanggal": "23-09-2024",
      "status": "Masuk WFO",
      "detail": {
        "datang": "08:05:10 WIB",
        "pulang": "17:20:55 WIB",
        "lokasi": "Alternindo Software (Pusat)"
      },
    },
    {
      "tanggal": "22-09-2024",
      "status": "Libur",
      "detail": null,
    },
    {
      "tanggal": "21-09-2024",
      "status": "Libur",
      "detail": null,
    },
    {
      "tanggal": "20-09-2024",
      "status": "Izin Sakit",
      "detail": null,
    },
    {
      "tanggal": "19-09-2024",
      "status": "Masuk WFO",
      "detail": {
        "datang": "08:05:10 WIB",
        "pulang": "17:20:55 WIB",
        "lokasi": "Alternindo Software (Pusat)"
      },
    },
    {
      "tanggal": "18-09-2024",
      "status": "Masuk WFO",
      "detail": {
        "datang": "08:05:10 WIB",
        "pulang": "17:20:55 WIB",
        "lokasi": "Alternindo Software (Pusat)"
      },
    },
    {
      "tanggal": "17-09-2024",
      "status": "Masuk WFO",
      "detail": {
        "datang": "08:05:10 WIB",
        "pulang": "17:20:55 WIB",
        "lokasi": "Alternindo Software (Pusat)"
      },
    },
    {
      "tanggal": "16-09-2024",
      "status": "Alpha",
      "detail": null,
    },
    {
      "tanggal": "15-09-2024",
      "status": "Libur",
      "detail": null,
    },
    {
      "tanggal": "14-09-2024",
      "status": "Libur",
      "detail": null,
    },
    {
      "tanggal": "13-09-2024",
      "status": "Masuk WFO",
      "detail": {
        "datang": "08:05:10 WIB",
        "pulang": "17:20:55 WIB",
        "lokasi": "Alternindo Software (Pusat)"
      },
    },
    {
      "tanggal": "12-09-2024",
      "status": "Masuk WFO",
      "detail": {
        "datang": "08:05:10 WIB",
        "pulang": "17:20:55 WIB",
        "lokasi": "Alternindo Software (Pusat)"
      },
    },
    {
      "tanggal": "11-09-2024",
      "status": "Masuk WFO",
      "detail": {
        "datang": "08:05:10 WIB",
        "pulang": "17:20:55 WIB",
        "lokasi": "Alternindo Software (Pusat)"
      },
    },
    {
      "tanggal": "10-09-2024",
      "status": "Masuk WFO",
      "detail": {
        "datang": "08:05:10 WIB",
        "pulang": "17:20:55 WIB",
        "lokasi": "Alternindo Software (Pusat)"
      },
    },
    {
      "tanggal": "09-09-2024",
      "status": "Masuk WFO",
      "detail": {
        "datang": "08:05:10 WIB",
        "pulang": "17:20:55 WIB",
        "lokasi": "Alternindo Software (Pusat)"
      },
    },
  ];

  

  Color _getStatusColor(String status) {
    switch (status) {
      case 'Masuk WFO':
        return const Color.fromARGB(117, 33, 149, 243);
      case 'Libur':
        return const Color.fromARGB(139, 0, 0, 0);
      case 'Izin Sakit':
        return const Color.fromARGB(99, 255, 153, 0);
      case 'Alpha':
        return const Color.fromARGB(107, 244, 67, 54);
      default:
        return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: absensiList.length,
      itemBuilder: (context, index) {
        final absensi = absensiList[index];
        final statusColor = _getStatusColor(absensi['status']);

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          child: Container(
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: CustomExpansionTile(
                title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(absensi['tanggal']),
                      const Spacer(),
                      Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 12),
                            decoration: BoxDecoration(
                              color: statusColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              absensi['status'],
                              style: const TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        
                        
                    ],
                  ),
                ),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      if (absensi['detail'] != null)
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Row(
                                    children: [
                                      ClipOval(
                                          child: Image.asset(
                                        AImages.profile,
                                        fit: BoxFit.cover,
                                        height: 30,
                                        width: 30,
                                      )),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text("Absen Datang"),
                                          Text(
                                            absensi['detail']['datang'],
                                            style: const TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Row(
                                    children: [
                                      ClipOval(
                                          child: Image.asset(
                                        AImages.profile,
                                        fit: BoxFit.cover,
                                        height: 30,
                                        width: 30,
                                      )),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text("Absen Pulang"),
                                          Text(
                                            absensi['detail']['pulang'],
                                            style: const TextStyle(
                                              color: AppColors.three,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                const Icon(Icons.location_on, size: 18),
                                const SizedBox(width: 4),
                                Text(absensi['detail']['lokasi']),
                              ],
                            ),
                            const SizedBox(height: 8),
                            const Row(
                              children: [
                                Icon(Icons.access_time,
                                    size: 18, color: AppColors.threeorange),
                                SizedBox(width: 4),
                                Text("Shift : Pagi"),
                              ],
                            ),
                          ],
                        ),
                    ], //Save
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
