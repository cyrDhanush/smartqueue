import 'package:flutter/material.dart';
import 'package:smartqueue/constants.dart';
import 'package:smartqueue/widgets/wavedesign.dart';

class VendorScreen extends StatefulWidget {
  const VendorScreen({Key? key}) : super(key: key);

  @override
  State<VendorScreen> createState() => _VendorScreenState();
}

class _VendorScreenState extends State<VendorScreen> {
  List<String> customizations = [
    'High Traffic, Less file size',
    'Less Traffic, High file size',
    'Custom',
  ];
  int dropdownvalue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopWave(
            title: 'Vendor',
          ),
          //body starts here
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Customizations',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // customization drop down box
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: DropdownButton(
                      value: dropdownvalue,
                      items: [
                        for (int i = 0; i < customizations.length; i++)
                          DropdownMenuItem(
                            value: i,
                            child: Text(
                              customizations[i],
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                      ],
                      isExpanded: true,
                      borderRadius: BorderRadius.circular(12),
                      underline: Container(),
                      icon: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.black.withAlpha(200),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.arrow_drop_down_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      onChanged: (item) {
                        setState(() {
                          dropdownvalue = item!;
                        });
                      },
                    ),
                    decoration: BoxDecoration(
                      color: lightgrey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Files Received',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Received files
                  Card(
                    margin: EdgeInsets.all(0),
                    elevation: 7,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: lightgrey,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        '50+',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Total Size: 100GB,Format revceived: JPG.',
                    style: TextStyle(
                      color: Colors.black.withAlpha(150),
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
