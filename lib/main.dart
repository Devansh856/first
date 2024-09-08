import 'package:flutter/material.dart';
import 'package:flutter_application_1/leave_details_card.dart';
import 'package:flutter_application_1/leave_dialog.dart';
import 'package:flutter_application_1/services/style.dart';
import 'package:flutter_application_1/side_menu.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Row(
          children: [
            // Sidebar
            SideMenu(ctext: context,),
            // Main Content Area
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top Section with Search Bar, Menu Icon, and Cards
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Column(
                      children: [
                        // Top Navigation Bar
                        Container(
                          height: 70,
                          color: Colors.grey[200],
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                const Icon(Icons.menu,
                                    size: 30, color: Color(0xFF0D6EFD)),
                                const SizedBox(
                                  width: 70,
                                ),
                                SizedBox(
                                  width: 400,
                                  height: 50,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Search',
                                      prefixIcon: const Icon(Icons.search),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none,
                                      ),
                                      filled: true,
                                      fillColor: Colors.grey[100],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 450,
                                ),
                                SvgPicture.asset(
                                    'assets/vectors/bell-ringing.svg'),

                                const SizedBox(width: 80),
                                const CircleAvatar(
                                  radius: 28, // Increased size of the avatar
                                  backgroundImage: AssetImage(
                                    'assets/images/avatar.png',
                                  ),
                                ),
                                SizedBox(width: 10),
                                // Aligning "Super Admin" below "John Doe"
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'John Doe',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Super Admin',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        // Dashboard Cards
                      ],
                    ),
                  ),
                 LeaveDialog(size: size)  
                  // Additional Content can go here
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Sidebar item widget


// Dashboard card widget

