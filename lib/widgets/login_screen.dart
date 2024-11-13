// ignore_for_file: use_build_context_synchronously, avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

import '../component/color.dart';
import 'home/home_pages.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _nipController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _kodeController = TextEditingController();

  void login() async {
  try {
    print("Mengirim permintaan login...");
    final response = await http.post(
      Uri.parse('https://alterindo.com/hris/api.php?action=login'),
      headers: {'Authorization': 'Bearer R8pZ5kL7QwX3J0aH2cT9vFm4Yn6bV1g'},
      body: jsonEncode({
        "NIP": _nipController.text,
        "KodeAktivasi": _kodeController.text,
      }),
    );

    print("Response status code: ${response.statusCode}");
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print("Response data: $data");
      if (data['message'] == 'Login Berhasil') {
        print("Login berhasil, akan berpindah halaman");
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePages()),
        );
      } else {
        print("Login gagal: ${data['message']}");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(data['message'] ?? 'Login gagal')),
        );
      }
    } else {
      print("Login gagal dengan status code: ${response.statusCode}");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Login gagal. Silakan coba lagi.')),
      );
    }
  } catch (e) {
    print('Error: $e');
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Terjadi kesalahan. Silakan coba lagi.')),
    );
  }
}

  @override
  void dispose() {
    _nipController.dispose();
    _passwordController.dispose();
    _kodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 1,
              child: Image.asset(
                'assets/Open Page.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Sizedbox = appbar image
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: 40),
                Image.asset('assets/Group 63.png'),
                const SizedBox(height: 4),
                const Text(
                  "IT-Consultant-Inovatif Software Solution",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 450,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 25),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Welcome Back!',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 28,
                          )),
                      const SizedBox(height: 15),
                      const Text(
                          'Silahkan masukkan NIP, Password, dan Kode Aktivasi Anda.'),
                      const SizedBox(height: 12),
                      TextField(
                        controller: _nipController,
                        keyboardType: TextInputType.text,
                        inputFormatters: [
                          FilteringTextInputFormatter.singleLineFormatter,
                        ],
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: AppColors.secondary, width: 1.5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: AppColors.secondary, width: 1.5),
                          ),
                          hintText: "NIP",
                          hintStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w300),
                        ),
                      ),
                      const SizedBox(height: 12),
                      TextField(
                        controller: _passwordController,
                        keyboardType: TextInputType.text,
                        inputFormatters: [
                          FilteringTextInputFormatter.singleLineFormatter,
                        ],
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: AppColors.secondary, width: 1.5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: AppColors.secondary, width: 1.5),
                          ),
                          hintText: "Password",
                          hintStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w300),
                        ),
                      ),
                      const SizedBox(height: 12),
                      TextField(
                        controller: _kodeController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: AppColors.secondary, width: 1.5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: AppColors.secondary, width: 1.5),
                          ),
                          hintText: "Kode Aktivasi",
                          hintStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Center(
                          child: ElevatedButton(
                            onPressed: login
                            // (){
                            //   Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePages()));
                            // }
                            ,
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.secondary,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                )),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 92, vertical: 24),
                              child: Center(
                                child: Text(
                                  'LOGIN',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                        ),
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