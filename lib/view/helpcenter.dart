import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HelpCenter(),));
}




class HelpCenter extends StatefulWidget {
  HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> with SingleTickerProviderStateMixin {
  late TabController _tabController; // TabController for managing tabs

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this); // Initialize TabController with 2 tabs
  }

  @override
  void dispose() {
    _tabController.dispose(); // Dispose of TabController when not needed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,

        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
        leading: Icon(Icons.arrow_back),
        title: Text("Help Center",selectionColor: Colors.white,),
        bottom: TabBar(
          labelColor: Colors.white,
          controller: _tabController,
          tabs: const [
            Tab(text: "FAQ"),
            Tab(text: "CONTACT US"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          faqTab(),
          Center(child: Text("Contact Us Content")),
        ],
      ),
    );
  }

  Widget faqTab() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Category Buttons Row
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                categoryButton("General", true),
                categoryButton("Account", false),
                categoryButton("Payment", false),
                categoryButton("Service", false),
              ],
            ),
          ),
          SizedBox(height: 10),
          // FAQ Items
          Expanded(
            child: ListView(
              children: [
                faqItem('How do I manage my notifications?',
                    'To manage notifications, go to "Settings," select "Notification Settings," and customize your preferences.'),
                faqItem('How do I start a guided meditation session?', 'Detailed answer...'),
                faqItem('How do I join a support group?', 'Detailed answer...'),
                faqItem('Is my data safe and private?', 'Detailed answer...'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Category Button UI
  Widget categoryButton(String title, bool isSelected) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Colors.blue : Colors.grey[300], // Change color when selected
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  // FAQ Item UI
  Widget faqItem(String question, String answer) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 6), // Add vertical spacing between cards
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: ExpansionTile(
        title: Text(
          question,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(answer),
          ),
        ],
      ),
    );
  }
}
