import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorsScreen extends StatelessWidget {
  final List<Doctor> doctors = [
    Doctor(
        name: "Dr. Haris",
        hospital: "PIMS Hospital",
        rating: 2.5,
        patients: 100,
        imageUrl: "assets/doctor1.png"),
    Doctor(
        name: "Dr. Arham",
        hospital: "Shafi Hospital",
        rating: 4.0,
        patients: 80,
        imageUrl: "assets/doctor2.png"),
    Doctor(
        name: "Dr. Asad",
        hospital: "Al-Shifa Hospital",
        rating: 4.5,
        patients: 90,
        imageUrl: "assets/doctor3.png"),
    Doctor(
        name: "Dr. Tabish",
        hospital: "Chinar Hospital",
        rating: 3.0,
        patients: 120,
        imageUrl: "assets/doctor4.png"),
    Doctor(
        name: "Dr. James",
        hospital: "Raazi Hospital",
        rating: 3.5,
        patients: 200,
        imageUrl: "assets/doctor5.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctors',
            style: GoogleFonts.roboto(color: Colors.white, fontSize: 24)),
        backgroundColor: Colors.pink,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Handle back button press
          },
        ),
      ),
      body: ListView.builder(
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          return DoctorCard(doctor: doctors[index]);
        },
      ),
    );
  }
}

class Doctor {
  final String name;
  final String hospital;
  final double rating;
  final int patients;
  final String imageUrl;

  Doctor(
      {required this.name,
      required this.hospital,
      required this.rating,
      required this.patients,
      required this.imageUrl});
}

class DoctorCard extends StatelessWidget {
  final Doctor doctor;

  DoctorCard({required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset(doctor.imageUrl, width: 50, height: 50),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(doctor.name,
                        style: GoogleFonts.roboto(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Text(doctor.hospital,
                        style: GoogleFonts.roboto(
                            fontSize: 14, color: Colors.grey[600])),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow[700], size: 16),
                        SizedBox(width: 4),
                        Text(doctor.rating.toString(),
                            style: GoogleFonts.roboto(fontSize: 14)),
                        SizedBox(width: 8),
                        Icon(Icons.people, color: Colors.grey[600], size: 16),
                        SizedBox(width: 4),
                        Text('${doctor.patients} Patients',
                            style: GoogleFonts.roboto(fontSize: 14)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
