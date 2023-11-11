import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Profile picture
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      border: Border.all(
                        color: Colors.blueGrey[100]!,
                        width: 5,
                      ),
                    ),
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          AssetImage('assets/images/gary_profile.jpg'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Name text
                  const Text(
                    'Gary Daniel Erno',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  // Email
                  const Text(
                    'mykatarinabluu@gmail.com',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 16),
                  // Social Media Link with Icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/2021_Facebook_icon.svg/2048px-2021_Facebook_icon.svg.png',
                        height: 24,
                        width: 24,
                      ),
                      const Text('FB'),
                      const SizedBox(width: 10),
                      Image.network(
                        'https://help.twitter.com/content/dam/help-twitter/brand/logo.png',
                        height: 24,
                        width: 24,
                      ),
                      const Text('TWT'),
                      const SizedBox(width: 10),
                      Image.network(
                        'https://cdn131.picsart.com/350726889041211.png',
                        height: 24,
                        width: 24,
                      ),
                      const Text('IG')
                    ],
                  ),
                  // Divider
                  const Divider(
                    color: Colors.blueGrey,
                    thickness: 0.5,
                    height: 20,
                  ),
                  // Short bio
                  const Text(
                    'Short bio: Akin lang si Karina of aespa. Back-off na kayo lahat',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
