import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Liburan Keluarga'),
          backgroundColor: const Color.fromARGB(255, 38, 105, 40),
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),  
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Taman Bunga Celosia',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: const Color.fromARGB(255, 38, 105, 40),
                ),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 12,
                  ),
                  SizedBox(width: 5),
                  Text(
                    '4.6', 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.family_restroom,
                    color: const Color.fromARGB(255, 38, 105, 40),
                    size: 12
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Cocok untuk keluarga',
                    style: const TextStyle(
                      fontSize: 12
                    ),
                  )
                ],
              ),
              SizedBox(height: 8),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://www.greeners.co/wp-content/uploads/2021/01/Bunga-Celosia-2.jpg',
                  width: double.infinity,
                  height: 190,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 8),
              const Text(
                'Pesona Alam',
                style:  const TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 38, 105, 40),
                ),
              ),
              SizedBox(height: 5),
              const Text(
                'Taman bunga menjadi tempat rekreasi yang menawarkan pemandangan bewarna-warni dan suasana yang menyegarkan. Pengunjung dapat berjalan santai, berfoto bersama keluarga, serta menikmati waktu di ruang terbuka.',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 8),
              const Text(
                'Rencana Kunjungan',
                style:  const TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 38, 105, 40),
                ),
              ),
              SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.all(16),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: const Color.fromARGB(255, 38, 105, 40),
                        ),
                        SizedBox(width: 12),
                        Text('Lokasi'),
                        Spacer(),
                        Text('Bandungan, Semarang', style: TextStyle(
                          fontWeight: FontWeight.bold
                        ))
                      ],
                    ),
                    Divider(height: 28),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: const Color.fromARGB(255, 38, 105, 40),
                        ),
                        SizedBox(width: 12),
                        Text('Jam Buka'),
                        Spacer(),
                        Text('08.00-17.00', style: TextStyle(
                          fontWeight: FontWeight.bold
                        ))
                      ],
                    ),
                    Divider(height: 28),
                    Row(
                      children: [
                        Icon(
                          Icons.confirmation_num,
                          color: const Color.fromARGB(255, 38, 105, 40),
                        ),
                        SizedBox(width: 12),
                        Text('Harga Tiket'),
                        Spacer(),
                        Text('Rp25.000',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ))
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {}, 
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 38, 105, 40),
                    padding: const EdgeInsets.all(14)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.nordic_walking,
                        color: Colors.white,
                      ),
                      Text(
                        'Rencanakan Kunjungan',
                        style:  const TextStyle(
                          color: Colors.white
                        ),
                      )
                    ],
                  ),
                ), 
              ),
            ],
          )
        ),
      ),
    );
  }
}
