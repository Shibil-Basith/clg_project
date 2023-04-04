import 'package:flutter/material.dart';
import 'package:sale_safari/core/colors/Colors.dart';
import 'package:sale_safari/presentation/admin/screens/approvals/seller_approval.dart';
import 'package:sale_safari/presentation/admin/screens/approvals/seller_edit_approval.dart';

class ApprovalTabBar extends StatefulWidget {
  const ApprovalTabBar({super.key});

  @override
  State<ApprovalTabBar> createState() => _ApprovalTabBarState();
}

class _ApprovalTabBarState extends State<ApprovalTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            title: const Text(
              'Admin Dashboard',
              style: TextStyle(
                fontSize: 27,
              ),
            ),
            actions: [
              IconButton(
                iconSize: 35,
                onPressed: () {
                  Navigator.pushNamed(context, 'adminprofile');
                },
                icon: const Icon(
                  Icons.account_circle_outlined,
                ),
              ),
            ],
            // ignore: prefer_const_constructors
            bottom:TabBar(tabs: 
             const [
              Tab(child: Text('Seller Approvals',style: TextStyle(color: textColor),),),
              Tab(child: Text('Changes Approvals',style: TextStyle(color: textColor),),),
            ]
            ),
          ),
          body:const TabBarView(
            children: [
              SellerApprovalPage(),
              SellerEditsPage()
            ]
            ),
      ),
    );
  }
}