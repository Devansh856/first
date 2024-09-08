import 'package:flutter/material.dart';
import 'package:flutter_application_1/leave_details_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'services/style.dart';

class LeaveDialog extends StatelessWidget {
  const LeaveDialog({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height > 700 ? size.height * 0.78 : size.height * 0.65,
      width: size.width > 1000 ? size.width * 0.81 : size.width * 0.5,
      child: Card(
        elevation: 15,
        color: Colors.white,
        shadowColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(top: 10, right: 18, bottom: 35, left: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Leave Request",
                    style: fontStyle(
                        FontWeight.w600, 18, Color.fromRGBO(44, 44, 44, 1)),
                  ),
                  Container(
                    height: 30,
                    width: 125,
                    child: TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                            "Apply button pressed. You can create a widget for applying leaves",
                          ),
                          backgroundColor:
                              const Color.fromARGB(255, 137, 209, 140),
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(0, 125, 187, 1),
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      child: Text(
                        "+ Apply",
                        style: fontStyle(FontWeight.w500, 13, Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Divider(),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    "Home > ",
                    style: fontStyle(
                        FontWeight.w500, 14, Color.fromRGBO(153, 153, 153, 1)),
                  ),
                  Text(
                    "Leave Request",
                    style: fontStyle(
                        FontWeight.w500, 14, Color.fromRGBO(0, 125, 187, 1)),
                  ),
                ],
              ),
              hb10,
              SizedBox(
                width: size.width > 1000 ? size.width * 0.81 : size.width * 0.5,
                child: DataTable(
                  headingRowColor:  WidgetStateProperty.resolveWith<Color?>(
                          (Set<WidgetState> states) {
                        return Color.fromRGBO(0, 125, 187, 0.1); // Use the default value.
                      }),
                  columns: <DataColumn>[
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          '#',
                          style: fontStyle(FontWeight.w600, 13,
                              Color.fromRGBO(0, 125, 187, 1)),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'Leave Type',
                          style: fontStyle(FontWeight.w600, 13,
                              Color.fromRGBO(0, 125, 187, 1)),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'Leave Days',
                          style: fontStyle(FontWeight.w600, 13,
                              Color.fromRGBO(0, 125, 187, 1)),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'Days',
                          style: fontStyle(FontWeight.w600, 13,
                              Color.fromRGBO(0, 125, 187, 1)),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'Apply Date',
                          style: fontStyle(FontWeight.w600, 13,
                              Color.fromRGBO(0, 125, 187, 1)),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'Reason',
                          style: fontStyle(FontWeight.w600, 13,
                              Color.fromRGBO(0, 125, 187, 1)),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'Status',
                          style: fontStyle(FontWeight.w600, 13,
                              Color.fromRGBO(0, 125, 187, 1)),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          'Action',
                          style: fontStyle(FontWeight.w600, 13,
                              Color.fromRGBO(0, 125, 187, 1)),
                        ),
                      ),
                    ),
                  ],
                  rows: <DataRow>[
                    DataRow(
                      color: WidgetStateProperty.resolveWith<Color?>(
                          (Set<WidgetState> states) {
                        return Color.fromRGBO(
                            242, 243, 246, 0.75); // Use the default value.
                      }),
                      cells: <DataCell>[
                        DataCell(
                          Text(
                            '1',
                            style: fontStyle(FontWeight.w400, 13,
                                Color.fromRGBO(143, 143, 143, 1)),
                          ),
                        ),
                        DataCell(Text(
                          'Maternity Leave',
                          style: fontStyle(FontWeight.w400, 13,
                              Color.fromRGBO(143, 143, 143, 1)),
                        )),
                        DataCell(Text(
                          '05/26/2024 - 05/28/2024',
                          style: fontStyle(FontWeight.w400, 13,
                              Color.fromRGBO(143, 143, 143, 1)),
                        )),
                        DataCell(
                          Text(
                            '3',
                            style: fontStyle(FontWeight.w400, 13,
                                Color.fromRGBO(143, 143, 143, 1)),
                          ),
                        ),
                        DataCell(Text(
                          '05/25/2024',
                          style: fontStyle(FontWeight.w400, 13,
                              Color.fromRGBO(143, 143, 143, 1)),
                        )),
                        DataCell(Text(
                          'I was Out of Station',
                          style: fontStyle(FontWeight.w400, 13,
                              Color.fromRGBO(143, 143, 143, 1)),
                        )),
                        DataCell(
                          Text(
                            'Approve',
                            style: fontStyle(FontWeight.w400, 13,
                                Color.fromRGBO(43, 182, 115, 1)),
                          ),
                        ),
                        DataCell(SvgPicture.asset(
                          'assets/vectors/delete.svg',
                          width: 18,
                          height: 18,
                        )),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(
                          Text(
                            '2',
                            style: fontStyle(FontWeight.w400, 13,
                                Color.fromRGBO(143, 143, 143, 1)),
                          ),
                        ),
                        DataCell(Text(
                          'Casual Leave',
                          style: fontStyle(FontWeight.w400, 13,
                              Color.fromRGBO(143, 143, 143, 1)),
                        )),
                        DataCell(Text(
                          '04/24/2024 - 04/26/2024',
                          style: fontStyle(FontWeight.w400, 13,
                              Color.fromRGBO(143, 143, 143, 1)),
                        )),
                        DataCell(
                          Text(
                            '3',
                            style: fontStyle(FontWeight.w400, 13,
                                Color.fromRGBO(143, 143, 143, 1)),
                          ),
                        ),
                        DataCell(Text(
                          '05/24/2024',
                          style: fontStyle(FontWeight.w400, 13,
                              Color.fromRGBO(143, 143, 143, 1)),
                        )),
                        DataCell(Text(
                          'I was not well',
                          style: fontStyle(FontWeight.w400, 13,
                              Color.fromRGBO(143, 143, 143, 1)),
                        )),
                        DataCell(
                          Text(
                            'Approve',
                            style: fontStyle(FontWeight.w400, 13,
                                Color.fromRGBO(43, 182, 115, 1)),
                          ),
                        ),
                        DataCell(SvgPicture.asset(
                          'assets/vectors/delete.svg',
                          width: 18,
                          height: 18,
                        )),
                      ],
                    ),
                    DataRow(
                      color:  WidgetStateProperty.resolveWith<Color?>(
                          (Set<WidgetState> states) {
                        return Color.fromRGBO(
                            242, 243, 246, 0.75); // Use the default value.
                      }),
                      cells: <DataCell>[
                        DataCell(
                          Text(
                            '3',
                            style: fontStyle(FontWeight.w400, 13,
                                Color.fromRGBO(143, 143, 143, 1)),
                          ),
                        ),
                        DataCell(Text(
                          'Medical Leave',
                          style: fontStyle(FontWeight.w400, 13,
                              Color.fromRGBO(143, 143, 143, 1)),
                        )),
                        DataCell(Text(
                          '01/19/2024 - 01/30/2024',
                          style: fontStyle(FontWeight.w400, 13,
                              Color.fromRGBO(143, 143, 143, 1)),
                        )),
                        DataCell(
                          Text(
                            '11',
                            style: fontStyle(FontWeight.w400, 13,
                                Color.fromRGBO(143, 143, 143, 1)),
                          ),
                        ),
                        DataCell(Text(
                          '01/18/2024',
                          style: fontStyle(FontWeight.w400, 13,
                              Color.fromRGBO(143, 143, 143, 1)),
                        )),
                        DataCell(Text(
                          'I was not well',
                          style: fontStyle(FontWeight.w400, 13,
                              Color.fromRGBO(143, 143, 143, 1)),
                        )),
                        DataCell(
                          Text(
                            'Decline',
                            style: fontStyle(FontWeight.w400, 13, Colors.red),
                          ),
                        ),
                        DataCell(SvgPicture.asset(
                          'assets/vectors/delete.svg',
                          width: 18,
                          height: 18,
                        )),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(
                          Text(
                            '4',
                            style: fontStyle(FontWeight.w400, 13,
                                Color.fromRGBO(143, 143, 143, 1)),
                          ),
                        ),
                        DataCell(Text(
                          'Casual Leave',
                          style: fontStyle(FontWeight.w400, 13,
                              Color.fromRGBO(143, 143, 143, 1)),
                        )),
                        DataCell(Text(
                          '03/25/2024 - 03/28/2024',
                          style: fontStyle(FontWeight.w400, 13,
                              Color.fromRGBO(143, 143, 143, 1)),
                        )),
                        DataCell(
                          Text(
                            '3',
                            style: fontStyle(FontWeight.w400, 13,
                                Color.fromRGBO(143, 143, 143, 1)),
                          ),
                        ),
                        DataCell(Text(
                          '03/24/2024',
                          style: fontStyle(FontWeight.w400, 13,
                              Color.fromRGBO(143, 143, 143, 1)),
                        )),
                        DataCell(Text(
                          'I was out of station',
                          style: fontStyle(FontWeight.w400, 13,
                              Color.fromRGBO(143, 143, 143, 1)),
                        )),
                        DataCell(
                          Text(
                            'Pending',
                            style: fontStyle(FontWeight.w400, 13,
                                Color.fromRGBO(249, 171, 67, 1)),
                          ),
                        ),
                        DataCell(SvgPicture.asset(
                          'assets/vectors/delete.svg',
                          width: 18,
                          height: 18,
                        )),
                      ],
                    ),
                  ],
                ),
              ),
              hb15,
              Text(
                "Leave Details",
                style: fontStyle(
                    FontWeight.w600, 15, Color.fromRGBO(44, 44, 44, 1)),
              ),
              hb10,
              Row(
                children: [
                  LeaveDetailsCard(
                      asset: 'assets/vectors/casuual.svg',
                      header: 'Casual Leave',
                      subtitle: 'Available - ',
                      count: '0'),
                  wb15,
                  LeaveDetailsCard(
                      asset: 'assets/vectors/earned.svg',
                      header: 'Earned Leave',
                      subtitle: 'Available - ',
                      count: '8'),
                  wb15,
                  LeaveDetailsCard(
                      asset: 'assets/vectors/available.svg',
                      header: 'Sick Leave',
                      subtitle: 'Available - ',
                      count: '12'),
                  wb15,
                  LeaveDetailsCard(
                      asset: 'assets/vectors/leaveper.svg',
                      header: 'Leave Without Pay',
                      subtitle: 'Available - ',
                      count: '0'),
                  wb15,
                  LeaveDetailsCard(
                      asset: 'assets/vectors/maternity.svg',
                      header: 'Maternity Leave',
                      subtitle: 'Available - ',
                      count: '5'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
