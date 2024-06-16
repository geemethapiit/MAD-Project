import 'package:flutter/material.dart';
import 'package:madproject/screens/AuthPage.dart';
import 'package:madproject/screens/HomePage.dart';
import 'package:madproject/screens/PetPage.dart';
import 'package:madproject/screens/MedicalRecords.dart';
import 'package:madproject/screens/Notifications.dart';
import 'package:madproject/screens/Appointments/AppointmentPage.dart';
import 'package:madproject/components/theme_notifier.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context)=> ThemeNotifier()..init(),
      child:  Consumer<ThemeNotifier>(
      builder: (context, ThemeNotifier notifier, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: notifier.isDark? ThemeMode.dark : ThemeMode.light,
          darkTheme: notifier.isDark? notifier.darkTheme : notifier.lightTheme,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
            useMaterial3: true,
          ),
          initialRoute:
          '/',
          routes: {
            // Auth for login and sign up
            //'/'; (context) => const Auth();
            '/': (context) => Auth(),
            //for main layout after login
            '/main': (context) => CustomBottomNavBar(),
          },
        );
      }
    ),
    );
  }
}




class CustomBottomNavBar extends StatefulWidget {
  CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => CustomBottomNavBarState();
}

class CustomBottomNavBarState extends State<CustomBottomNavBar> {

  int myIndex = 0;
  List<Widget> widgetList =  [
    Homepage(),
    PetPage(),
    AppointmentPage(),
    NotificationPage(),
    MedicalRecordsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
          children: widgetList,
          index: myIndex
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),
            label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.pets),
            label: 'Pets',),
          BottomNavigationBarItem(icon: Icon(Icons.event),
            label: 'Appointments',),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),
            label: 'Notifications',),
          BottomNavigationBarItem(icon: Icon(Icons.library_books),
            label: 'Medical Records',),
        ],
      ),
    );
  }
}


class PageHeader extends StatelessWidget {
  final String title;

  const PageHeader({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 0,),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/profile_pic.jpeg'),
          ),
        ],
      ),
    );
  }
}
