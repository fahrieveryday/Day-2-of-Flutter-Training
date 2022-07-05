import 'package:flutter/material.dart';
import 'package:practice1/pages/home_page_tabs/tab_calls.dart';
import 'package:practice1/pages/home_page_tabs/tab_camera.dart';
import 'package:practice1/pages/home_page_tabs/tab_chats.dart';
import 'package:practice1/pages/home_page_tabs/tab_status.dart';
import 'package:practice1/styles/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController? tabController;
  IconData fabIcon = Icons.call;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this)
      ..addListener(() {
        setState(() {
          switch (tabController?.index) {
            case 0:
              fabIcon = Icons.camera_alt;
              break;
            case 1:
              fabIcon = Icons.message;
              break;
            case 2:
              fabIcon = Icons.camera_enhance;
              break;
            case 3:
              fabIcon = Icons.call;
              break;
            default:
              fabIcon = Icons.camera_alt;
          }
        });
      });
    tabController?.index = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practice 1'),
        backgroundColor: whatsAppGreen,
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 20),
          Icon(Icons.more_vert),
          SizedBox(width: 20),
        ],
        bottom: TabBar(
            indicatorColor: Colors.white,
            controller: tabController,
            tabs: const [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('CHATS'),
              ),
              Tab(
                child: Text('STATUS'),
              ),
              Tab(
                child: Text('CALLS'),
              ),
            ]),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: TabBarView(
            controller: tabController,
            children: const [TabCamera(), TabChats(), TabStatus(), TabCalls()]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: whatsAppLightGreen,
        child: Icon(fabIcon),
      ),
    );
  }
}
