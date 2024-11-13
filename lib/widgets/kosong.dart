  // void _NextPage() {
  //   if (_nipController.text.isEmpty ||
  //       _passwordController.text.isEmpty ||
  //       _kodeController.text.isEmpty) {
  //     showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return Dialog(
  //           child: SizedBox(
  //             height: 300,
  //             width: 90,
  //             child: Column(
  //               children: [
  //                 const Spacer(),
  //                 Image.asset('assets/ci_off-close.png'),
  //                 const Spacer(),
  //                 const Text('Error'),
  //                 const Spacer(),
  //                 // actions: [
  //                 //   TextButton(
  //                 //     child: const Text('OK'),
  //                 //     onPressed: () {
  //                 //       Navigator.of(context).pop();
  //                 //     },
  //                 //   ),
  //                 // ],
  //                 Padding(
  //                   padding: const EdgeInsets.symmetric(horizontal: 14.0),
  //                   child: SizedBox(
  //                     width: double.infinity,
  //                     height: 48,
  //                     child: ElevatedButton(
  //                       onPressed: () {
  //                         Navigator.pop(context);
  //                       },
  //                       style: ElevatedButton.styleFrom(
  //                           shape: RoundedRectangleBorder(
  //                               borderRadius: BorderRadius.circular(8)),
  //                           backgroundColor: AppColors.secondary),
  //                       child: const Text(
  //                         'Coba Lagi',
  //                         style: TextStyle(color: Colors.white),
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //                 const Spacer(),
  //               ],
  //             ),
  //           ),
  //         );
  //       },
  //     );
    
  //   } else {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => const HomePages(),
  //       ),
  //     );
  //   }
  // }
