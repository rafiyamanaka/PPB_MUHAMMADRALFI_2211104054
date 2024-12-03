import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:gd11/main.dart';
import 'package:gd11/page.dart';

class MyNotification extends StatefulWidget {
  const MyNotification({super.key});

  @override
  State<MyNotification> createState() => _MyNotificationState();
}

class _MyNotificationState extends State<MyNotification> {
  void initState() {
    super.initState();

    // Membuat pengaturan inisialisasi notifikasi untuk Android
    var initializationSettingsAndroid =
        const AndroidInitializationSettings('@mipmap/ic_launcher');
    var initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);
    FlutterLocalNotificationsPlugin().initialize(initializationSettings);

    // Mendengarkan pesan saat aplikasi aktif
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  RemoteNotification? notification = message.notification;
  AndroidNotification? android = message.notification?.android;

  if (notification != null && android != null) {
    FlutterLocalNotificationsPlugin().show(
      notification.hashCode,
      notification.title ?? "Informasi Mahasiswa",
      "${notification.body ?? ""}\nNama: John Doe\nNIM: 12345678\nKelas: IF-1\nProdi: Teknik Informatika",
      NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          channelDescription: channel.description,
          icon: '@mipmap/ic_launcher',
        ),
      ),
    );
  }
});

FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => NotificationDetailPage(
        nama: "John Doe",
        nim: "12345678",
        kelas: "IF-1",
        prodi: "Teknik Informatika",
      ),
    ),
  );
});

    // Memanggil metode untuk mengambil token FCM perangkat
    getToken();
  }

  // Metode untuk mendapatkan token FCM
  void getToken() async {
    token = await FirebaseMessaging.instance
        .getToken(); // Mendapatkan token FCM perangkat
    print('FCM Token: $token'); // Menampilkan token di log
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Notification'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is my notification screen'),
          ],
        ),
      ),
    );
  }
}
