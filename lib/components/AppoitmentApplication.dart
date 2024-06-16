import 'package:flutter/material.dart';
import 'package:madproject/components/customButton.dart';
import '../main.dart';

class AppointmentApplication extends StatefulWidget {
  const AppointmentApplication({super.key});

  @override
  State<AppointmentApplication> createState() => _AppointmentApplicationState();
}

class _AppointmentApplicationState extends State<AppointmentApplication> {
  // Form field controllers
  final TextEditingController _petIdController = TextEditingController();
  String? _selectedServiceType;
  String? _selectedService;
  String? _selectedProvider;
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  // Example data for dropdowns
  final List<String> _serviceTypes = ['Grooming', 'Vaccination', 'Check-up'];
  final List<String> _services = ['Basic Grooming', 'Full Grooming', 'Nail Trim'];
  final List<String> _providers = ['Dr. Sameera', 'Dr. Pradeep', 'Dr. Kasun'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                PageHeader(title: "Book Now"),
             Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "Appointment Application",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 25),
                        TextFormField(
                          controller: _petIdController,
                          decoration: InputDecoration(labelText: 'Pet ID'),
                        ),
                        const SizedBox(height: 25),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(labelText: 'Select Service Type'),
                          value: _selectedServiceType,
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedServiceType = newValue;
                            });
                          },
                          items: _serviceTypes.map((String type) {
                            return DropdownMenuItem<String>(
                              value: type,
                              child: Text(type),
                            );
                          }).toList(),
                        ),
                        const SizedBox(height: 25),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(labelText: 'Select Service'),
                          value: _selectedService,
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedService = newValue;
                            });
                          },
                          items: _services.map((String service) {
                            return DropdownMenuItem<String>(
                              value: service,
                              child: Text(service),
                            );
                          }).toList(),
                        ),
                        const SizedBox(height: 25),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(labelText: 'Select Service Provider'),
                          value: _selectedProvider,
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedProvider = newValue;
                            });
                          },
                          items: _providers.map((String provider) {
                            return DropdownMenuItem<String>(
                              value: provider,
                              child: Text(provider),
                            );
                          }).toList(),
                        ),
                        const SizedBox(height: 25),
                        ListTile(
                          title: Text('Date: ${_selectedDate != null ? _selectedDate!.toLocal().toString().split(' ')[0] : 'Select Date'}'),
                          trailing: Icon(Icons.calendar_today),
                          onTap: () {
                            // Placeholder for date picker
                          },
                        ),
                        const SizedBox(height: 25),
                        ListTile(
                          title: Text('Time: ${_selectedTime != null ? _selectedTime!.format(context) : 'Select Time'}'),
                          trailing: Icon(Icons.access_time),
                          onTap: () {
                            // Placeholder for time picker
                          },
                        ),
                        SizedBox(height: 20),
                        ComButton(width: 200, title: "Submit", disable: false, onPressed: () {}),
                      ],
                    ),
                  ),
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
