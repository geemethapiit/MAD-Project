import 'package:flutter/material.dart';
import 'package:madproject/components/AppoitmentApplication.dart';


class Appoinment extends StatefulWidget{
  Appoinment({Key? key}) : super(key: key);

  @override
  State<Appoinment> createState() => AppoinmentState();
}

class AppoinmentState extends State<Appoinment>{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Row(
                children : [
                  CircleAvatar(
                    backgroundImage:
                    AssetImage('assets/images/appoitnment_icon.png'),
                    radius: 30,
                  ),
                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Appointments',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                      SizedBox(
                        height:   2,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 25,),
              Schedule(),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlueAccent,
                      ),
                      child: const Text(
                        'Request Appointment',
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const AppointmentApplication(),));
                      },
                    ),
                  ),
                  const SizedBox(width:  20,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
          Text(
            'Looks like you dont have any upcoming appointments',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white),
          );
  }
}