import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store/model/notification_model.dart';
import 'package:smart_store/presintation/resources/color_manager.dart';
import 'package:smart_store/presintation/resources/values_manager.dart';

class NotificationScreen extends StatelessWidget {
   NotificationScreen({Key? key}) : super(key: key);

  List<NotificationModel> notifications = [
    NotificationModel('Facebook','you logined in this app throw face book account',DateTime(2020)),
    NotificationModel('Facebook','you logined in this app throw face book account',DateTime(2020)),
    NotificationModel('Facebook','you logined in this app throw face book account',DateTime(2020)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 120, right: 25, left: 25),
        child: Column(
          children: [
            Text('Notification'),
            ListView.builder(
              itemBuilder: (context, index) => Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: ColorManager.grey2.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20)),
                width: double.infinity,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(notifications[index].title,
                            style: GoogleFonts.cairo(
                                fontWeight: FontWeight.bold,
                                fontSize: AppSize.s16,
                                color: ColorManager.primary)),
                        Text(notifications[index].content, style: GoogleFonts.cairo()),
                        Text(notifications[index].DateRecived.toString(),
                            style: GoogleFonts.cairo()),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.remove_circle,
                            color: ColorManager.error,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.edit,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
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
