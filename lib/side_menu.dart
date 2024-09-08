import 'package:flutter/material.dart';
import 'package:flutter_application_1/leave_dialog.dart';

import 'services/style.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key, required this.ctext});
  final BuildContext ctext;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: 250,
      color: const Color.fromRGBO(0, 125, 187, 1), // Sidebar background color
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Image.asset('assets/images/complogo.png'),
              ],
            ),
          ),
          Divider(color: Colors.white70),
          
          SidebarItem(title: 'Dashboard', icon: Icons.dashboard),
          hb10,
          SidebarItem(title: 'Company', icon: Icons.business),
          hb10,
          SidebarItem(title: 'User', icon: Icons.people),
          hb10,
          SidebarItem(title: 'Attendance', icon: Icons.access_time),
          hb10,
          SidebarItem(title: 'Compensation', icon: Icons.monetization_on),
          hb10,
          SidebarItem(
              title: 'Leave',
              icon: Icons.time_to_leave,
              onTap: 1),
          hb10,
          SidebarItem(title: 'Payroll', icon: Icons.payments),
          hb10,
          SidebarItem(title: 'Announcements', icon: Icons.announcement),
          hb10,
          SidebarItem(title: 'Holiday', icon: Icons.beach_access),
          hb10,
          SidebarItem(title: 'Notification', icon: Icons.notifications),
          const Spacer(),
          SidebarItem(title: 'Log Out', icon: Icons.logout),
        ],
      ),
    );
  }
}

class SidebarItem extends StatelessWidget {
  final String title;
  final IconData icon;
   int? onTap;

  SidebarItem({super.key, required this.title, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      selected: true,
      hoverColor: Color.fromARGB(255, 93, 172, 226),
      selectedTileColor: Colors.white,
      splashColor: Colors.white24,
      selectedColor: Colors.white,
      title: Text(
        title,
        style: fontStyle(FontWeight.w300, 14, Color.fromRGBO(255, 255, 255, 1)),
      ),
      onTap: () {
        if(onTap==1){
         LeaveDialog(size: MediaQuery.sizeOf(context));
        }
       
      },
    );
  }
}
