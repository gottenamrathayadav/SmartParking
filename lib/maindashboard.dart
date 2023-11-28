import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Park Hub App',
      theme: ThemeData(
        primaryColor: Colors.black, // Set the primary color to black
      ),
      home: WelcomeScreen(),
      routes: {
        AppRoutes.mainPage: (context) => MainPage(),
      },
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // Set the app bar background color to black
        title: Text(
          'Park Hub',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true, // Center the title
      ),
      body: _getPageContent(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white, // Set the icon color to white
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              color: Colors.white, // Set the icon color to white
            ),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_box,
              color: Colors.white, // Set the icon color to white
            ),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        backgroundColor: Colors.black, // Set the background color to black
        selectedItemColor: Colors.white, // Set the selected tab color to white
        unselectedItemColor: Colors.white, // Set the unselected tab color to white
        showSelectedLabels: false, // Optional: hide labels for selected item
        showUnselectedLabels: false, // Optional: hide labels for unselected items
      ),
    );
  }

  Widget _getPageContent(int index) {
    switch (index) {
      case 0:
        return HomeTab();
      case 1:
        return BookingsTab();
      case 2:
        return AccountTab();
      default:
        return Container(); // Handle default case or return an error widget.
    }
  }
}

class AppRoutes {
  static const String welcome = '/';
  static const String mainPage = '/mainpage';
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Park Hub!',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Find the perfect parking spot for your needs.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, AppRoutes.mainPage);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white, // Set the background color to white
                onPrimary: Colors.black, // Set the text color to black
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Home Tab Content"),
    );
  }
}

class BookingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Bookings Tab Content"),
    );
  }
}

class AccountTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Account Tab Content"),
    );
  }
}
