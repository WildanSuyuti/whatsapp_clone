import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp_clone/assets/get_colors.dart';
import 'package:whatsapp_clone/assets/get_icons.dart';
import 'package:whatsapp_clone/calls_page.dart';
import 'package:whatsapp_clone/camera_page.dart';
import 'package:whatsapp_clone/chats_page.dart';
import 'package:whatsapp_clone/status_page.dart';

class HomePage extends StatefulWidget {
  static const route = '/home';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: GetColors.darkGreen,
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: GetColors.white,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                GetIcons.icSearch,
                colorFilter: const ColorFilter.mode(
                  GetColors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: GetColors.white,
              ),
            ),
          ],
          bottom: TabBar(
            labelColor: GetColors.white,
            unselectedLabelColor: GetColors.white,
            indicatorColor: GetColors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            onTap: (v) => setState(() => _index = v),
            tabs: const [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
          ),
        ),
        body: _pages[_index],
      ),
    );
  }

  List<Widget> get _pages => const [
        CameraPage(),
        ChatsPage(),
        StatusPage(),
        CallsPage(),
      ];
}
