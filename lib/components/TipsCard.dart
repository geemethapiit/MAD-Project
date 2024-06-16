import 'package:flutter/material.dart';


class Tipform extends StatefulWidget{
  Tipform({Key? key}) : super(key: key);

  @override
  State<Tipform> createState() => TipfromState();
}

class TipfromState extends State<Tipform>{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child:
        Container(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child:Column(
              children: [
                 Container(
                      height: 100,
                      child: Card(
                       elevation: 5,
                        color: Colors.white,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 200,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child:
                                Image.asset('assets/images/taking-care-pets-diabetes.jpg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const Flexible(child:
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Discover Pet Insurance',
                                    style:
                                    TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                 ),
              ],
          ),
        ),
    );
  }
}