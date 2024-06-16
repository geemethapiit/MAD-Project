import 'package:flutter/material.dart';
import 'package:madproject/main.dart';



class ServiceMain extends StatefulWidget {
  const ServiceMain({super.key});

  @override
  State<ServiceMain> createState() => _ServiceMainState();
}

class _ServiceMainState extends State<ServiceMain> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                PageHeader(title: "Services"),
                const SizedBox(height: 25,),
                Container(
                  height: 150,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      SizedBox(
                        child: CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage('assets/images/veter.png'),
                        ),
                      ),
                      Text(
                        'Veterinary Services',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 25,),
                Container(
                  height: 150,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      SizedBox(
                        child: CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage('assets/images/consul.jpg'),
                        ),
                      ),
                      Text(
                        'Consultations',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 25,),
                Container(
                  height: 150,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      SizedBox(
                        child: CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage('assets/images/emergency.jpg'),
                        ),
                      ),
                      Text(
                        'Emergency Care',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 25,),
                Container(
                  height: 150,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      SizedBox(
                        child: CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage('assets/images/boarding.png'),
                        ),
                      ),
                      Text(
                        'Boarding',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 25,),
                Container(
                  height: 150,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      SizedBox(
                        child: CircleAvatar(
                          radius: 70,
                          backgroundImage:  AssetImage('assets/images/grooming.jpeg'),
                        ),
                      ),
                      Text(
                        'Grooming',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 25,),
                Container(
                  height: 150,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      SizedBox(
                        child: CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage('assets/images/insurance.jpeg'),
                        ),
                      ),
                      Text(
                        'Insurance',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
