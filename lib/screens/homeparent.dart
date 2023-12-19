import 'package:flutter/material.dart';
import 'package:smartqueue/constants.dart';
import 'package:smartqueue/screens/mainscreens/customerscreen.dart';
import 'package:smartqueue/screens/mainscreens/supportscreen.dart';
import 'package:smartqueue/screens/mainscreens/vendorscreen.dart';

class HomeParent extends StatefulWidget {
  const HomeParent({Key? key}) : super(key: key);

  @override
  State<HomeParent> createState() => _HomeParentState();
}

class _HomeParentState extends State<HomeParent>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: TabBarView(
        physics: BouncingScrollPhysics(),
        controller: tabController,
        children: [
          CustomerScreen(),
          VendorScreen(),
          SupportScreen(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.black,
        child: TabBar(
          controller: tabController,
          labelColor: Colors.white,
          labelStyle: TextStyle(
            fontSize: 16,
          ),
          unselectedLabelColor: Colors.white.withAlpha(150),
          unselectedLabelStyle: TextStyle(
            color: Colors.white.withAlpha(150),
            fontSize: 14,
          ),
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: UnderlineTabIndicator(
            // insets: EdgeInsets.only(bottom: 67),
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
          tabs: [
            Tab(
              text: 'Customer',
            ),
            Tab(
              text: 'Vendor',
            ),
            Tab(
              text: 'Support',
            ),
          ],
        ),
      ),
    );
  }
}
