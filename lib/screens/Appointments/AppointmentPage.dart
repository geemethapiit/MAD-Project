import 'package:flutter/material.dart';
import 'package:madproject/components/AppointmentCard.dart';
import 'package:madproject/components/NotificationCard.dart';
import 'package:madproject/main.dart';
import 'package:madproject/components/Slidebar.dart';

class AppointmentPage extends StatefulWidget{
  AppointmentPage({Key? key}) : super(key: key);

  @override
  State<AppointmentPage> createState() => AppointmentPageState();
}

class AppointmentPageState extends State<AppointmentPage> {

  final List<Appointment> appointmentHistory = [
    Appointment(
      title: "Appointment ID 4022",
      message: "Sky Pet Hospital - Pet ID 5879 - Consultation -  Dr. Lakshan Perera ",
      dateTime: DateTime(2024, 04, 17, 16, 0),
    ),
    Appointment(
      title: "Appointment ID 4079",
      message: "Sky Pet Hospital - Pet ID 5879 - Consultation -  Dr. Lakshan Perera ",
      dateTime: DateTime(2024, 04, 17, 16, 0),
    ),
    Appointment(
      title: "Appointment ID 5142",
      message: "Sky Pet Hospital - Pet ID 5879 - Consultation -  Dr. Lakshan Perera ",
      dateTime: DateTime(2024, 04, 17, 16, 0),
    ),
    Appointment(
      title: "Appointment ID 7897",
      message: "Sky Pet Hospital - Pet ID 5879 - Consultation -  Dr. Lakshan Perera ",
      dateTime: DateTime(2024, 04, 17, 16, 0),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: PageHeader(title: "Appointments"),
      ),
      drawer: SideBar(),
      body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15
          ),
          child: ListView(
              children: [
                Appoinment(),
                SizedBox(height: 25,),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Your Appointment History",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 25,),
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


class Appointment {
  final String title;
  final String message;
  final DateTime dateTime;

  Appointment ({
    required this.title,
    required this.message,
    required this.dateTime,
});
}
