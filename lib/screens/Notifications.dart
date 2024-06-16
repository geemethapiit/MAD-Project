import 'package:flutter/material.dart';
import 'package:madproject/main.dart';
import 'package:madproject/components/Slidebar.dart';

import '../components/NotificationCard.dart';

class NotificationPage extends StatefulWidget {
  NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => NotificationPageState();
}

class NotificationPageState extends State<NotificationPage> {


  final List<Notifi> appointmentHistory = [
    Notifi(
      title: "Upcoming Appointment",
      message: "Don't forget your appointment at Happy Paws Clinic for Bella - Pet ID 1234 with Dr. Emily Brown.",
      dateTime: DateTime(2024, 07, 20, 10, 0),
    ),
    Notifi(
      title: "Vaccination Reminder",
      message: "Time for Rocky's annual rabies vaccination at VetCare Clinic. Schedule your visit soon!",
      dateTime: DateTime(2024, 06, 25, 9, 0),
    ),
    Notifi(
      title: "Medical Records Updated",
      message: "New lab results for Luna - Pet ID 5678 are now available. Check the app for details.",
      dateTime: DateTime(2024, 05, 15, 14, 30),
    ),
    Notifi(
      title: "Prescription Refill Reminder",
      message: "It's time to refill Max's heartworm medication. Visit your nearest clinic or order online.",
      dateTime: DateTime(2024, 06, 30, 12, 0),
    ),
    Notifi(
      title: "Appointment Confirmation",
      message: "Your appointment for Charlie at PetWell Clinic is confirmed for June 21, 2024, at 2:00 PM.",
      dateTime: DateTime(2024, 06, 21, 14, 0),
    ),
    Notifi(
      title: "New Clinic Added",
      message: "We have added Paws & Claws Veterinary Clinic to our network. Book your next appointment with them!",
      dateTime: DateTime(2024, 06, 10, 8, 0),
    ),
    Notifi(
      title: "Follow-Up Reminder",
      message: "Reminder: Follow-up appointment for Daisy is scheduled at Greenfield Veterinary on July 1, 2024.",
      dateTime: DateTime(2024, 07, 01, 11, 0),
    ),
    Notifi(
      title: "Health Alert",
      message: "Heatwave warning! Ensure your pets stay hydrated and avoid outdoor activities during peak hours.",
      dateTime: DateTime(2024, 06, 17, 7, 0),
    ),
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: PageHeader(title: "Notifications"),
      ),
      drawer: SideBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15
        ),
        child: ListView(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: appointmentHistory.length,
                      itemBuilder: (context, index) {
                        return NotificationCard(
                          title: appointmentHistory[index].title,
                          message: appointmentHistory[index].message,
                          dateTime: appointmentHistory[index].dateTime,
                        );
                      },
                    )
                  ],
                ),
              )
            ]
        ),
      ),
    );
  }
}


class Notifi {
  final String title;
  final String message;
  final DateTime dateTime;

  Notifi ({
    required this.title,
    required this.message,
    required this.dateTime,
  });
}
