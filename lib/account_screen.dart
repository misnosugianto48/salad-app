import 'package:flutter/material.dart';
import 'package:salad_works/login_screen.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _profile(),
            const SizedBox(height: 20),
            _orderHistory(context),
            const Divider(),
            _accountSetting(context),
            const Divider(),
            const SizedBox(height: 20),
            _logoutButton(context),
          ],
        ),
      ),
    )));
  }
}

Widget _profile() {
  return Column(
    children: [
      CircleAvatar(
        radius: 50,
        child: ClipOval(
          child: Image.network(
            'https://media.licdn.com/dms/image/v2/D5603AQEJxXl-8qKbjQ/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1714156757699?e=1736985600&v=beta&t=kiWnIXH4Hgfaokmi4rlueVKDcFdH_8_8ljka8c56eG4',
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.error),
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
      const SizedBox(height: 20),
      const Text(
        'Misno Sugianto',
        style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Oxygen'),
      ),
      const SizedBox(height: 5),
      const Text(
        'misno48.sugianto@gmail.com',
        style:
            TextStyle(fontSize: 16, color: Colors.grey, fontFamily: 'Oxygen'),
      ),
    ],
  );
}

Widget _orderHistory(BuildContext context) {
  return ListTile(
    leading: const Icon(Icons.shopping_bag),
    title: Text(
      'History',
      style: informationTextStyle,
    ),
    onTap: () {
      _showFeatureNotAvailablePopup(context);
    },
  );
}

Widget _accountSetting(BuildContext context) {
  return ListTile(
    leading: const Icon(Icons.settings),
    title: Text(
      'Account Settings',
      style: informationTextStyle,
    ),
    onTap: () {
      _showFeatureNotAvailablePopup(context);
    },
  );
}

Widget _logoutButton(BuildContext context) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(16.0),
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        backgroundColor: Colors.black,
      ),
      child: const Text(
        "Logout",
        style: TextStyle(
            fontSize: 14.0, color: Colors.white, fontFamily: 'Oxygen'),
      ),
    ),
  );
}

void _showFeatureNotAvailablePopup(BuildContext context) {
  Future.delayed(Duration.zero, () {
    showDialog(
      // ignore: use_build_context_synchronously
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Fitur Belum Tersedia'),
          content: const Text('Maaf, fitur ini belum tersedia saat ini.'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  });
}
