import 'package:flutter/material.dart';
import 'package:madproject/components/customButton.dart';
import 'package:madproject/main.dart';
import 'package:madproject/components/Slidebar.dart';

class PetPage extends StatefulWidget {
  const PetPage({super.key});

  @override
  State<PetPage> createState() => PetPageState();
}

class PetPageState extends State<PetPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: PageHeader(title: "Your Pet\'s"),
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
                Container(
                  height: 200,
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
                          backgroundImage:
                              AssetImage('assets/images/dog_profile_pic.jpg'),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            'Golden Retriever',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Name : Ranger',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Age : 3',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Weight : 32kg',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 25,),
                ComButton(width: 430, title: 'Add New Pet', disable: false, onPressed: (){} ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
