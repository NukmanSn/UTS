import 'package:flutter/material.dart';
import 'package:hotel/ProfilePage.dart';

class Hotel {
  final String name;
  final String description;
  final String imageUrl;

  Hotel(this.name, this.description, this.imageUrl);
}

final List<Hotel> hotels = [
  Hotel(
    'Mulia Resort',
    'Meliliki Rating 4,5',
    'assets/hotel4.jpg',
  ),
  Hotel(
    'Tentrem Hotel',
    'Meliliki Rating 4,0',
    'assets/hotel2.jpg',
  ),
  Hotel(
    'Luminor Hotel',
    'Meliliki Rating 4,5',
    'assets/hotel3.jpg',
  ),
  Hotel(
    'FIERIS HOTEL',
    'Meliliki Rating 4.0',
    'assets/hotel1.jpg',
  ),
];

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Selamat Datang"),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.green, 
      
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          Stack(
            children: <Widget>[
              Positioned(
                left: 10,
                top: 10,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue, // Warna kotak
                    borderRadius: BorderRadius.circular(50.0), // Membuat kotak menjadi lingkaran
                  ),
                  padding: const EdgeInsets.all(5),
                  child: const Center(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/profil.jpg'), // Ganti dengan path gambar avatar pengguna
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 120, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Nukman Solikhudin',
                      style: TextStyle(fontSize: 18, color: Colors.white), // Warna teks
                    ),
                    Text(
                      '21670052',
                      style: TextStyle(fontSize: 18, color: Colors.white), // Warna teks
                    ),
                  Row( // Baris untuk ikon rating
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 20,
                        ),
                        Text(
                          '4.5', // Ganti dengan rating yang sesuai
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: 
            ElevatedButton(
            onPressed: () {
            Navigator.of(context).push(
               MaterialPageRoute(
        builder: (context) =>  const ProfilePage(),
      ),
    );
  },
  child: const Text('About Me'),
)
          ),
          const SizedBox(height: 20),
          const Divider(), // Garis pemisah di atas ikon di bawah navigator
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white, // Warna kotak
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey, // Warna bayangan
                            blurRadius: 5.0, // Radius bayangan
                            offset: Offset(0, 2), // Posisi bayangan
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(10),
                      child: const Column( // Menggunakan Column untuk ikon di tengah
                        children: <Widget>[
                          Center(
                            child: Icon(Icons.monetization_on, color: Colors.red), // Ikon "saldo" di tengah
                          ),
                          SizedBox(height: 10), // Jarak antara ikon dan teks
                          Text('Saldo', style: TextStyle(color: Colors.black)), // Warna teks
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white, // Warna kotak
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey, // Warna bayangan
                            blurRadius: 5.0, // Radius bayangan
                            offset: Offset(0, 2), // Posisi bayangan
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(10),
                      child: const Column( // Menggunakan Column untuk ikon di tengah
                        children: <Widget>[
                          Center(
                            child: Icon(Icons.book, color: Colors.green), // Ikon "booking" di tengah
                          ),
                          SizedBox(height: 10), // Jarak antara ikon dan teks
                          Text('Booking', style: TextStyle(color: Colors.black)), // Warna teks
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white, // Warna kotak
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey, // Warna bayangan
                            blurRadius: 5.0, // Radius bayangan
                            offset: Offset(0, 2), // Posisi bayangan
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(10),
                      child: const Column( // Menggunakan Column untuk ikon di tengah
                        children: <Widget>[
                          Center(
                            child: Icon(Icons.note, color: Colors.blue), // Ikon "catatan" di tengah
                          ),
                          SizedBox(height: 10), // Jarak antara ikon dan teks
                          Text('Catatan', style: TextStyle(color: Colors.black)), // Warna teks
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white, // Warna kotak
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey, // Warna bayangan
                            blurRadius: 5.0, // Radius bayangan
                            offset: Offset(0, 2), // Posisi bayangan
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(10),
                      child: const Column( // Menggunakan Column untuk ikon di tengah
                        children: <Widget>[
                          Center(
                            child: Icon(Icons.star, color: Colors.orange), // Ikon "rating
                          ),
                          SizedBox(height: 10), // Jarak antara ikon dan teks
                          Text('Rating', style: TextStyle(color: Colors.black)), // Warna teks
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white, // Warna kotak
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey, // Warna bayangan
                            blurRadius: 5.0, // Radius bayangan
                            offset: Offset(0, 2), // Posisi bayangan
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(10),
                      child: const Column( // Menggunakan Column untuk ikon di tengah
                        children: <Widget>[
                          Center(
                            child: Icon(Icons.card_giftcard, color: Colors.purple), // Ikon "voucher" di tengah
                          ),
                          SizedBox(height: 10), // Jarak antara ikon dan teks
                          Text('Voucher', style: TextStyle(color: Colors.black)), // Warna teks
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Divider(), // Garis pemisah di atas ikon di bawah navigator
          const SizedBox(height: 20),
          const Text(
            'Daftar Hotel',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 400, // Tinggi kartu hotel
            child: PageView.builder(
              scrollDirection: Axis.vertical, // Mengizinkan pengguna menggeser hotel secara vertikal
              itemCount: hotels.length, // Jumlah hotel
              itemBuilder: (context, index) {
                final hotel = hotels[index];

                return Card(
                  elevation: 5.0, // Menambahkan bayangan pada kartu hotel
                  margin: const EdgeInsets.only(right: 10), // Memberi jarak antara kartu hotel
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white, // Warna kotak
                        ),
                        child: Image.asset(
                          hotel.imageUrl, 
                          width: 350,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        hotel.name, // Nama hotel
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Harga per Malam: \$100', 
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      Text(
                        hotel.description, // Deskripsi hotel
                        style: const TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Tindakan saat tombol "Pesan" ditekan
                          // Anda dapat menambahkan logika pemesanan di sini
                        },
                        child: const Text('Pesan'),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
