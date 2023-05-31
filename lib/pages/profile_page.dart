import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:pariwisata_indonesia/pages/home_page.dart';
import 'package:pariwisata_indonesia/widgets/bottom_navigation_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }
    if (index == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfilePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeader(),
            SizedBox(height: 20),
            MenuList(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        selectedIndex: _selectedIndex,
        onTabSelected: _onTabSelected,
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/ubay.jpg'),
          ),
          SizedBox(height: 20),
          Text(
            'Muhamad Ubaydillah',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Tangerang',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class MenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Menu',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Ionicons.ticket_outline),
            title: Text('Ticket'),
            onTap: () {
              // Handle profile menu item tap
            },
          ),
          ListTile(
            leading: Icon(Ionicons.notifications),
            title: Text('Notification'),
            onTap: () {
              // Handle profile menu item tap
            },
          ),
          ListTile(
            leading: Icon(Ionicons.settings),
            title: Text('Settings'),
            onTap: () {
              // Handle settings menu item tap
            },
          ),
          ListTile(
            leading: Icon(Ionicons.log_out),
            title: Text('Logout'),
            onTap: () {
              // Handle logout menu item tap
            },
          ),
        ],
      ),
    );
  }
}
