import 'dart:io';

import 'package:flutter/material.dart';
import 'package:smartqueue/constants.dart';
import 'package:smartqueue/services/filepicker.dart';
import 'package:smartqueue/widgets/filewidget.dart';
import 'package:smartqueue/widgets/wavedesign.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({Key? key}) : super(key: key);

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  Filepicker picker = Filepicker();
  List<String> filenames = [];
  fileupdate() async {
    filenames.clear();
    List<File> files = picker.getfiles();
    for (File file in files) {
      filenames.add(file.path.split('/').last);
    }
    print(filenames);
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fileupdate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopWave(
            title: 'Customer',
          ),
          //body starts here
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Upload Documents',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            await picker.pickFiles();
                            await fileupdate();
                            setState(() {});
                          },
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // for uploading documents
                    Card(
                      margin: EdgeInsets.all(0),
                      elevation: 7,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: lightgrey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            for (String i in filenames)
                              FileTile(
                                filename: i,
                              ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Size allowed: 50MB',
                      style: TextStyle(
                        color: Colors.black.withAlpha(150),
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Format accepted: JPG, PNG, DOCX, XLXS',
                      style: TextStyle(
                        color: Colors.black.withAlpha(150),
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Error Detection',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Some errors in format',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: lightgrey,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: lightgrey,
                              foregroundColor: Colors.black,
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Text(
                              'FIX',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        Row(),
                        Container(
                          height: 50,
                          width: 50,
                          child: Image.asset('assets/icons/bell.png'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Your print will be Ready in: 5 mins',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
