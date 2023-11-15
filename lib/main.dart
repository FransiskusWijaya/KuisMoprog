import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('Godrej'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {
                // Tambahkan fungsi pencarian di sini
              },
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {
                // Tambahkan fungsi keranjang belanja di sini
              },
            ),
          ],
        ),
        body: Stack(
          children: <Widget>[
            Container(
              height: 50.0, // Ubah ini untuk mengubah tinggi tepi atas
              color: Colors.red,
            ),
            Container(
              margin: EdgeInsets.only(top: 100.0),
              color: Colors.white,
            ),
            Positioned(
              top: 5.0, // Ubah ini untuk mengubah posisi widget
              left: 20.0, // Ubah ini untuk mengatur jarak widget dari tepi kiri
              right: 20.0, // Ubah ini untuk mengatur jarak widget dari tepi kanan
              child: Container(
                height: 150.0, // Ubah ini untuk mengubah panjang widget
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // Ubah posisi bayangan jika diperlukan
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network('https://secureservercdn.net/160.153.138.177/jnw.425.myftpupload.com/wp-content/uploads/2021/05/1280px-Godrej_Logo.svg.png', height: 75), // Ganti dengan URL logo Godrej Anda
                    SizedBox(width: 10.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Ubah ini untuk mengatur posisi vertikal dalam Column
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Godrej', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                        Row(
                          children: <Widget>[
                            Image.network('https://th.bing.com/th/id/OIP.zuYu_QOUrqViev40wzcOrQHaI9?pid=ImgDet&rs=1', height: 20), // Ganti dengan URL ikon siluet pria Anda
                            SizedBox(width: 5.0),
                            Text('5.441 Pengikut'), // Ganti dengan jumlah pengikut sebenarnya
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            ElevatedButton(
                              onPressed: () {
                                // Tambahkan fungsi Follow di sini
                              },
                              child: Text('Mengikuti'),
                            ),
                            SizedBox(width: 10.0),
                            IconButton(
                              icon: Icon(Icons.share),
                              onPressed: () {
                                // Tambahkan fungsi Share di sini
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 180.0, // Ubah ini untuk mengubah posisi widget
              left: 20.0, // Ubah ini untuk mengatur jarak widget dari tepi kiri
              right: 20.0, // Ubah ini untuk mengatur jarak widget dari tepi kanan
              child: Container(
                height: 200.0, // Ubah ini untuk mengubah panjang widget
                child: PageView(
                  children: <Widget>[
                    Image.network('https://th.bing.com/th/id/OIP.zrhiP4qzXLJ3TeEqzbmfcAHaFj?pid=ImgDet&rs=1'), // Ganti dengan URL gambar Anda
                    Image.network('https://th.bing.com/th/id/R.5155a95e3d1199e6cdeaad6b1468b081?rik=qIVZks4Vpdng%2bg&riu=http%3a%2f%2f4.bp.blogspot.com%2f-yw57neKoYss%2fUx4ugQbd9cI%2fAAAAAAAAaQw%2fWl7RsyAVxSg%2fs1600%2fBanner%2bMurah%2bKambing%2bGolek%2b14x6%2bkaki.jpg&ehk=LKh9eQJCgkM%2bgvnyQM9cWgdKagGKyouzMaZxrjhFDnQ%3d&risl=&pid=ImgRaw&r=0'), // Ganti dengan URL gambar Anda
                    Image.network('https://th.bing.com/th/id/OIP.7LBfiHc5zNVQYkJpt_sqNwHaFj?pid=ImgDet&rs=1'), // Ganti dengan URL gambar Anda
                  ],
                ),
              ),
            ),
            Positioned(
              top: 400.0, // Ubah ini untuk mengubah posisi widget
              left: 0.0,
              right: 0.0,
              child: Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.white,
                child: Text(
                  'Semua Produk',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Text('Promosi'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Text('Nama Produk'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Text('Terlaris'),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
