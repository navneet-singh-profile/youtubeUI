
import 'package:flutter/material.dart';

class ChannelItem extends StatelessWidget {
  final String title;
  final String imageUrl;

  const ChannelItem(this.title, this.imageUrl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
        maxRadius: 11,
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 13),
      ),
      trailing: const CircleAvatar(
        maxRadius: 2.5,
        backgroundColor: Colors.blue,
      ),
    );
  }
}

class SidebarMenuItem extends StatelessWidget {
  final String title;
  final Icon icon;
  const SidebarMenuItem(this.title, this.icon, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
      ),
      dense: true,
    );
  }
}

class VideoCard extends StatelessWidget {
  const VideoCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 180,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShzVQFhRr7hA4plP37cbx8DQNyY6hrVZ4D7A&usqp=CAU")),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              maxRadius: 15,
              backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShzVQFhRr7hA4plP37cbx8DQNyY6hrVZ4D7A&usqp=CAU",
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                    "Installing Debian Linux 2.1 From\n1999 Was A Painful Experience ...",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    )),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Text(
                      "Fireship",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 163, 163, 163),
                      ),
                    ),
                    Icon(
                      Icons.check_circle,
                      size: 12,
                      color: Colors.grey.shade400,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "27K views • 2 hours ago",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 163, 163, 163),
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}

// widgets
class CustomChip extends StatelessWidget {
  final String title;

  const CustomChip(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Chip(
        backgroundColor: const Color.fromARGB(255, 55, 55, 55),
        side: BorderSide(color: Colors.grey.shade400, width: 0.1),
        label: Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}