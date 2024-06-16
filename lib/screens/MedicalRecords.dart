import 'package:flutter/material.dart';

import '../components/MedicalCard.dart';
import '../components/Slidebar.dart';
import '../main.dart';

class MedicalRecordsPage extends StatefulWidget{
  MedicalRecordsPage({Key? key}) : super(key: key);

  @override
  State<MedicalRecordsPage> createState() => MedicalRecordsPageState();
}

class MedicalRecordsPageState extends State<MedicalRecordsPage> {

  final List<Notifi> appointmentHistory = [
    Notifi(
      title: "Vaccination Record",
      message: "petID: 1234\n"
          "vaccineName: Rabies\n"
          "nextDueDate: 2024-06-10\n"
          "administeredBy: Dr. Emily Brown\n"
          "clinic: Happy Paws Clinic",
      dateTime: DateTime(2024, 07, 20, 10, 0),
    ),
    Notifi(
      title: "Routine Checkup",
      message: "petID: 1234\n"
          "visitDate: 2023-04-20\n"
          "reasonForVisit: Routine Checkup\n"
          "diagnosis: Healthy\n"
          "treatment: None\n"
          "notes: Pet is in good health. Recommended annual checkup.\n"
          "veterinarian: Dr. Emily Brown\n"
          "clinic: Happy Paws Clinic",
      dateTime: DateTime(2024, 04, 20, 10, 0),
    ),
    Notifi(
      title: "Allergy Treatment",
      message: "petID: 1234\n"
          "visitDate: 2022-12-10\n"
          "reasonForVisit: Allergic Reaction\n"
          "diagnosis: Skin Allergy\n"
          "treatment: Prescribed antihistamines\n"
          "notes: Advised to monitor for any further reactions and avoid suspected allergens.\n"
          "veterinarian: Dr. Emily Brown\n"
          "clinic: Happy Paws Clinic",
      dateTime: DateTime(2022, 12, 10, 10, 0),
    ),
    Notifi(
      title: "Prescription Record",
      message: "petID: 1234\n"
          "medicationName: Antihistamine\n"
          "datePrescribed: 2022-12-10\n"
          "dosage: 10mg, once daily\n"
          "duration: 14 days\n"
          "prescribingVet: Dr. Emily Brown\n"
          "clinic: Happy Paws Clinic",
      dateTime: DateTime(2022, 12, 10, 10, 0),
    ),
    Notifi(
      title: "Surgery Record",
      message: "petID: 1234\n"
          "surgeryName: Spay\n"
          "dateOfSurgery: 2019-07-15\n"
          "surgeon: Dr. Emily Brown\n"
          "clinic: Happy Paws Clinic\n"
          "outcome: Successful\n"
          "notes: Recovery was smooth. No complications.",
      dateTime: DateTime(2019, 07, 15, 10, 0),
    ),
    Notifi(
      title: "Weight Record",
      message: "petID: 1234\n"
          "date: 2023-04-20\n"
          "weight: 25 kg",
      dateTime: DateTime(2023, 04, 20, 10, 0),
    ),
    Notifi(
      title: "Test Result",
      message: "petID: 1234\n"
          "testName: Blood Test\n"
          "dateOfTest: 2023-04-20\n"
          "results: Normal\n"
          "notes: All parameters within normal range.\n"
          "conductedBy: Dr. Emily Brown\n"
          "clinic: Happy Paws Clinic",
      dateTime: DateTime(2023, 04, 20, 10, 0),
    ),
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: PageHeader(title: "Medical Records"),
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
