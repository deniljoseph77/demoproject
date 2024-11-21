import 'package:assignment/view/listtile.dart';
import 'package:flutter/material.dart';

//
// void main() {
//   runApp(MaterialApp(
//     home: drawer(),
//     debugShowCheckedModeBanner: false,
//   ));
// }
//
// class drawer extends StatelessWidget {
//   const drawer({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Drawer"),
//       ),
//       drawer:  Drawer(
//         width: 250,
//         child: listtile(),
//       ),
//     );
//   }
// }

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pop-up Drawer Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
              ),
              builder: (context) => DrawerContent(),
            );
          },
          child: Text('Show Drawer'),
        ),
      ),
    );
  }
}

class DrawerContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: EdgeInsets.all(12.0),
      child: listtile(),
    );
  }
}
