import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SafeArea(
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Your personal\nAI TB detector',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/ai_tb_detector.png', // Make sure to add your image asset to the project
              height: 150,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle button press
                },
                child: Text('Diagnose through X-Ray'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink, // Background color
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: _buildCard(
                context,
                'assets/images/specialist_doctors.png',
                'Specialist Doctors',
                SpecialistDoctorsScreen(),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: _buildCard(
                context,
                'assets/images/medication_tracking.png',
                'Medication Tracking',
                MedicationTrackingScreen(),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: _buildCard(
                context,
                'assets/images/medical_history.png',
                'Medical History',
                MedicalHistoryScreen(),
              ),
            ),
            SizedBox(height: 20), // Add some spacing at the bottom
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Diagnose',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
        selectedItemColor: Colors.pink,
      ),
    );
  }

  Widget _buildCard(BuildContext context, String imagePath, String title,
      Widget destinationScreen) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(16),
        leading: Image.asset(
          imagePath,
          width: 50,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.pink,
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destinationScreen),
          );
        },
      ),
    );
  }
}

// Define separate screens for each card
class SpecialistDoctorsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Specialist Doctors'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Text('Specialist Doctors Screen'),
      ),
    );
  }
}

class MedicationTrackingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medication Tracking'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Text('Medication Tracking Screen'),
      ),
    );
  }
}

class MedicalHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medical History'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Text('Medical History Screen'),
      ),
    );
  }
}
