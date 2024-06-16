import 'package:flutter/material.dart';
import 'package:madproject/components/AppointmentCard.dart';
import 'package:madproject/components/TipsCard.dart';
import 'package:madproject/main.dart';
import 'package:madproject/screens/Services/ServiceMain.dart';
import 'package:madproject/components/Slidebar.dart';


class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => HomepageState();
}

class HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: PageHeader(title: "Welcome"),
      ),
      drawer: SideBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 15,
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(image: AssetImage('assets/images/pet_fair.jpeg')),
                  const SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Select Services',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ServiceMain()),
                          );
                        },
                        child: const Text(
                          'See all',
                          style: TextStyle(
                            fontSize:16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25,),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage('assets/images/veter.png'),
                              ),
                            ),
                            Text(
                              'Veterinary Services',
                            )
                          ],
                        ),
                        SizedBox(width: 25,),
                        Column(
                          children: [
                            SizedBox(
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage('assets/images/consul.jpg'),
                              ),
                            ),
                            Text(
                              'Consultation',
                            )
                          ],
                        ),
                        SizedBox(width: 25,),
                        Column(
                          children: [
                            SizedBox(
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage('assets/images/emergency.jpg'),
                              ),
                            ),
                            Text(
                              'Emergency Care',
                            )
                          ],
                        ),
                        SizedBox(width: 25,),
                        Column(
                          children: [
                            SizedBox(
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage('assets/images/boarding.png'),
                              ),
                            ),
                            Text(
                              'Boarding ',
                            )
                          ],
                        ),
                        SizedBox(width: 25,),
                        Column(
                          children: [
                            SizedBox(
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage('assets/images/grooming.jpeg'),
                              ),
                            ),
                            Text(
                              'Grooming',
                            )
                          ],
                        ),
                        SizedBox(width: 25,),
                        Column(
                          children: [
                            SizedBox(
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage('assets/images/insurance.jpeg'),
                              ),
                            ),
                            Text(
                              'Insurance',
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
                  SizedBox(height: 25,),
                  Appoinment(),
                  SizedBox(height: 25,),
                  Tipform(),
                  SizedBox(height: 25,),
                  Tipform(),
                  SizedBox(height: 25,),
                  Tipform(),
                  SizedBox(height: 25,),
                ],
              ),
            ),
          ),
        ),
    );
  }
}