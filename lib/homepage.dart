import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: Row(
          children: const [
            Expanded(flex: 2, child: Sidebar()),
            Expanded(flex: 10, child: ThumbnailArea()),
          ],
        ));
  }
}

class ThumbnailArea extends StatelessWidget {
  const ThumbnailArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 32, 32, 32),
              border: Border(
                  top: BorderSide(width: 0.1, color: Colors.grey.shade50),
                  bottom: BorderSide(width: 0.1, color: Colors.grey.shade50))),
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: SizedBox(
            height: 40,
            child: ListView(
              controller: ScrollController(),
              scrollDirection: Axis.horizontal,
              children: const [
                CustomChip("All"),
                CustomChip("Live"),
                CustomChip("Computer programs"),
                CustomChip("Tablet computers"),
                CustomChip("Grand Theft Auto V"),
                CustomChip("Smartphones"),
                CustomChip("Sceince fictions"),
                CustomChip("Recently uploaded"),
              ],
            ),
          ),
        ),
        Expanded(
          child: LayoutBuilder(
            builder: (context, dimens) {
              if (dimens.maxWidth < 1200 && dimens.maxWidth > 1000) {
                return const CustomGridView(
                  3,
                );
              } else if (dimens.maxWidth < 1000 && dimens.maxWidth > 700) {
                return const CustomGridView(
                  2,
                );
              } else if (dimens.maxWidth < 700) {
                return const CustomGridView(
                  1,
                );
              } else {
                return const CustomGridView(4);
              }
            },
          ),
        ),
      ],
    );
  }
}

class CustomGridView extends StatelessWidget {
  final int columns;
  const CustomGridView(this.columns, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 24, 24, 24),
        child: GridView.builder(
            controller: ScrollController(),
            itemCount: 100,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 0,
              crossAxisCount: columns,
              crossAxisSpacing: 15,
            ),
            itemBuilder: (itemBuilder, i) => const VideoCard()));
  }
}

class Sidebar extends StatelessWidget {
  const Sidebar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 33, 33, 33),
      child: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          const SidebarMenuItem("Home", Icon(Icons.home_filled)),
          const SidebarMenuItem("Explore", Icon(Icons.explore_outlined)),
          const SidebarMenuItem(
              "Subscriptions", Icon(Icons.subscriptions_outlined)),
          const Divider(),
          const SidebarMenuItem("Library", Icon(Icons.video_library_outlined)),
          const SidebarMenuItem("History", Icon(Icons.history_sharp)),
          const SidebarMenuItem("Your videos", Icon(Icons.slideshow_sharp)),
          const SidebarMenuItem(
              "Your movies", Icon(Icons.local_movies_outlined)),
          const SidebarMenuItem("Watch later", Icon(Icons.schedule_sharp)),
          const ExpansionTile(
            title: Text(
              "Show more",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            leading: Icon(Icons.keyboard_arrow_down),
            trailing: SizedBox(),
            children: [
              SidebarMenuItem("Liked videos", Icon(Icons.thumb_up_outlined)),
            ],
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Text(
              "SUBSCRIPTIONS",
              style: TextStyle(
                color: Color.fromARGB(255, 170, 170, 170),
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            ),
          ),
          const ChannelItem("Insider",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShzVQFhRr7hA4plP37cbx8DQNyY6hrVZ4D7A&usqp=CAU"),
          const ChannelItem("Coditas",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShzVQFhRr7hA4plP37cbx8DQNyY6hrVZ4D7A&usqp=CAU"),
          const ChannelItem("Bussiness Insider",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShzVQFhRr7hA4plP37cbx8DQNyY6hrVZ4D7A&usqp=CAU"),
          const ChannelItem("Insider",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShzVQFhRr7hA4plP37cbx8DQNyY6hrVZ4D7A&usqp=CAU"),
          const ChannelItem("Coditas",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShzVQFhRr7hA4plP37cbx8DQNyY6hrVZ4D7A&usqp=CAU"),
          const ChannelItem("Bussiness Insider",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShzVQFhRr7hA4plP37cbx8DQNyY6hrVZ4D7A&usqp=CAU"),
          const ExpansionTile(
            title: Text(
              "Show 18 more",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            leading: Icon(Icons.keyboard_arrow_down),
            trailing: SizedBox(),
            children: [
              ChannelItem("Bussiness Insider",
                  "https://yt3.ggpht.com/ytc/AKedOLT5wSJGXa3Mt-ZQt-siZTsmSAQfSPMAHVTHhgnvzQ=s88-c-k-c0x00ffffff-no-rj")
            ],
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Text(
              "MORE FROM YOUTUBE",
              style: TextStyle(
                color: Color.fromARGB(255, 170, 170, 170),
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            ),
          ),
          const SidebarMenuItem(
              "YouTube Premium", Icon(Icons.smart_display_outlined)),
          const SidebarMenuItem("Films", Icon(Icons.theaters_outlined)),
          const SidebarMenuItem("Gaming", Icon(Icons.sports_esports_outlined)),
          const SidebarMenuItem("Live", Icon(Icons.sensors_sharp)),
          const SidebarMenuItem(
              "Fashion & beauty", Icon(Icons.dry_cleaning_outlined)),
          const SidebarMenuItem(
              "Learning", Icon(Icons.lightbulb_outline_sharp)),
          const SidebarMenuItem("Sports", Icon(Icons.emoji_events_outlined)),
          const Divider(),
          const SidebarMenuItem("Settings", Icon(Icons.settings_outlined)),
          const SidebarMenuItem("Report history", Icon(Icons.flag_outlined)),
          const SidebarMenuItem("Help", Icon(Icons.help_outline_outlined)),
          const SidebarMenuItem("Send feedback", Icon(Icons.feedback_outlined)),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "About  Press  Copyright  Contact us  Creator  Advertise  Developers\n\n\nTerms  Privacy  Policy & Safety  How YouTube works  Test new features",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Color.fromARGB(255, 170, 170, 170)),
                ),
                SizedBox(height: 10),
                Text(
                  "© 2021 Google LLC",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 113, 113, 113)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

AppBar appBar() {
  return AppBar(
    backgroundColor: const Color.fromARGB(255, 32, 32, 32),
    flexibleSpace: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(width: 20),
        const Icon(Icons.menu_sharp),
        const SizedBox(width: 20),
        SvgPicture.asset("logo.svg"),
        const Expanded(child: SizedBox()),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            height: 40,
            width: 600,
            child: TextField(
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                suffixIcon: Container(
                  color: const Color.fromARGB(255, 49, 49, 49),
                  width: 60,
                  height: 40,
                  child: const Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 226, 226, 226),
                  ),
                ),
                hintText: "Search",
                hintStyle: const TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 136, 136, 136),
                    fontWeight: FontWeight.w400),
                filled: true,
                fillColor: const Color.fromARGB(255, 18, 18, 18),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 1, color: Color.fromARGB(255, 48, 48, 48)),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 1, color: Color.fromARGB(255, 48, 48, 48)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 1, color: Color.fromARGB(255, 48, 48, 48)),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 5),
        const CircleAvatar(child: Icon(Icons.mic), maxRadius: 19),
        const Expanded(child: SizedBox()),
        const Icon(Icons.video_call_outlined),
        const SizedBox(width: 20),
        const Icon(Icons.apps_outlined),
        const SizedBox(width: 20),
        const Icon(Icons.notifications_none_outlined),
        const SizedBox(width: 20),
        const CircleAvatar(
          maxRadius: 16,
          backgroundImage: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShzVQFhRr7hA4plP37cbx8DQNyY6hrVZ4D7A&usqp=CAU",
              scale: 0.1),
        ),
        const SizedBox(width: 20),
      ],
    ),
    toolbarHeight: 50,
  );
}
