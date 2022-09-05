// import 'package:flutter/material.dart';
// import 'package:whatsapp_home_screen_ui_clone/pages/chat_page.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   @override
//   void initState() {
//     _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xff075e54),
//         title: const Text('WhatsApp'),
//         actions: [
//           IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
//           IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
//         ],
//         bottom: TabBar(
//           controller: _tabController,
//           tabs: const [
//             Tab(
//               icon: Icon(Icons.camera_alt),
//             ),
//             Tab(
//               text: 'CHATS',
//             ),
//             Tab(
//               text: 'STATUS',
//             ),
//             Tab(
//               text: 'CALLS',
//             ),
//           ],
//           indicatorColor: Colors.white,
//         ),
//       ),
//       body: const ChatPage(),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../pages/chat_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: const Color(0xff075e54),
              title: const Text('WhatsApp'),
              actions: [
                IconButton(icon: const Icon(Icons.search), onPressed: () {}),
                IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
              ],
              pinned: true,
              floating: true,
              forceElevated: innerBoxIsScrolled,
              bottom: TabBar(
                controller: _tabController,
                tabs: const [
                  Tab(
                    icon: Icon(Icons.camera_alt),
                  ),
                  Tab(
                    text: 'CHATS',
                  ),
                  Tab(
                    text: 'STATUS',
                  ),
                  Tab(
                    text: 'CALLS',
                  ),
                ],
                indicatorColor: Colors.white,
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: const [
            Text("Camera"),
            ChatPage(),
            Text("Staus"),
            Text("Calls"),
          ],
        ),
      ),
    );
  }
}
