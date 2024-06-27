import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SetReminderTimeScreen extends StatefulWidget {
  const SetReminderTimeScreen({super.key});

  @override
  State<SetReminderTimeScreen> createState() => _SetReminderTimeScreenState();
}

class _SetReminderTimeScreenState extends State<SetReminderTimeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(
                left: 12.0, top: 40, right: 12, bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'What time would you\nlike to meditate?', style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Colors.black87,
                ),),
                const SizedBox(height: 15,),
                const Text(
                  'Any time you can choose but We recommend\nfirst thing in the morning',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey
                  ),),
                const SizedBox(height: 40,),
                TimePickerDialog(
                 initialTime: TimeOfDay.now(),
                ),
                const SizedBox(height: 40,),
                const Text(
                  'Which day would you like to meditate?', style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Colors.black87,
                ),),
                const SizedBox(height: 15,),
                const Text(
                  'Everyday is best, but we recommend picking\nat least five.',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey
                  ),),
                const SizedBox(height: 60,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(onPressed: () {},
                            child: const Text('Save', style: TextStyle(
                              fontSize: 18,
                            ),))),
                    const SizedBox(height: 10,),
                    TextButton(
                        onPressed: () {}, child: const Text('NO THANKS')),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
