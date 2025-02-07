import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../widgets/footer.dart';


class YouPage extends StatelessWidget {
  const YouPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('You'),
        actions: [
          IconButton(
            icon: const Icon(Iconsax.setting),
            onPressed: () {
              // Navigate to settings page
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildProfileHeader(),
            _buildSectionTitle('Account'),
            _buildAccountSection(),
            _buildSectionTitle('Activity'),
            _buildActivitySection(),
            _buildSectionTitle('Preferences'),
            _buildPreferencesSection(),
          ],
        ),
      ),
      bottomNavigationBar: const Footer(), // Use the footer widget here

    );
  }

  Widget _buildProfileHeader() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/images/profile_picture.png'), // Add a profile picture asset
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Niwesh Sah',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(
                'b23277@students.iitmandi.ac.in',
                style: TextStyle(color: Colors.grey[600]),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  // Navigate to edit profile page
                },
                child: const Text('Edit Profile'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildAccountSection() {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          _buildListTile(Iconsax.card, 'Payment Methods', () {}),
          _buildListTile(Iconsax.location, 'Addresses', () {}),
          _buildListTile(Iconsax.shield_tick, 'Security', () {}),
        ],
      ),
    );
  }

  Widget _buildActivitySection() {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          _buildListTile(Iconsax.book, 'Order History', () {}),
          _buildListTile(Iconsax.heart, 'Saved Books', () {}),
          _buildListTile(Iconsax.star, 'Reviews', () {}),
        ],
      ),
    );
  }

  Widget _buildPreferencesSection() {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          _buildListTile(Iconsax.notification, 'Notifications', () {}),
          _buildListTile(Iconsax.language_square, 'Language', () {}),
          _buildListTile(Iconsax.moon, 'Dark Mode', () {}),
        ],
      ),
    );
  }

  Widget _buildListTile(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: const Icon(Iconsax.arrow_right),
      onTap: onTap,
    );
  }
}