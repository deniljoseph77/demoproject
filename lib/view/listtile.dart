import 'package:flutter/material.dart';

class listtile extends StatelessWidget {
  const listtile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      DrawerHeader(
        padding: EdgeInsets.all(20),
        child: Text("Name"),
        decoration: BoxDecoration(
          color: Colors.black45
        ),
      ),
      ListTile(
        leading: Icon(Icons.person),
        title: Text("My profile"),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text("Home"),
      ),
      ListTile(
        leading: Icon(Icons.book_online),
        title: Text("Bookings"),
      ),
      ListTile(
        leading: Icon(Icons.build),
        title: Text("Active Services"),
      ),
      ListTile(
        leading: Icon(Icons.work),
        title: Text("Services"),
      ),
      ListTile(
        leading: Icon(Icons.report_problem_outlined),
        title: Text("Complaints"),
      ),
      ListTile(
        leading: Icon(Icons.message),
        title: Text("Messages"),
      ),
      ListTile(
        leading: Icon(Icons.attach_money),
        title: Text("Transcations"),
      ),
      ListTile(
        leading: Icon(Icons.history),
        title: Text("History"),
      ),
      ListTile(
        leading: Icon(Icons.help_center),
        title: Text("Help Center"),
      ),
      ListTile(
        leading: Icon(Icons.policy),
        title: Text("Terms & Conditions"),
      ),
      ListTile(
        leading: Icon(Icons.info),
        title: Text("About Us"),
      ),
      ListTile(
        leading: Icon(Icons.person_add),
        title: Text("Invite a Friend"),
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text("Log out"),
      ),
    ]);
  }
}
