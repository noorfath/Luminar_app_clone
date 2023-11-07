import 'package:flutter/material.dart';
import 'package:luminar_app_clone/contents/chatscreen.dart';

// void main() {
//   runApp(MaterialApp(home: Screen4()));
// }

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.deepPurpleAccent,
      //   leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      //   title: Text('Luminar Technolab'),
      //   actions: [IconButton(onPressed: () {}, icon: Icon(Icons.notifications))],
      // ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchAnchor(
              builder: (BuildContext context, SearchController controller) {
                return SearchBar(
                  controller: controller,
                  padding: const MaterialStatePropertyAll<EdgeInsets>(
                      EdgeInsets.symmetric(horizontal: 16.0)),
                  onTap: () {
                    controller.openView();
                  },
                  onChanged: (_) {
                    controller.openView();
                  },
                  leading: const Icon(Icons.search),
                  hintText: "Search by name",
                );
              },
              suggestionsBuilder: (BuildContext context, SearchController controller) {
                return List<ListTile>.generate(5, (int index) {
                  final String item = 'item $index';
                  return ListTile(
                    title: Text(item),
                    onTap: () {
                      setState(() {
                        controller.closeView(item);
                      });
                    },
                  );
                });
              },
            ),
          ),
          Expanded(child: ChatList()), // Include the ChatList widget here
        ],
      ),
    );
  }
}

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ChatItem('FLUTTER May 23 Sreedevi 2pm', 'Luminar Technolab : Luminar Tecgnolab added Flutter', '11:30 AM', true),
        ChatItem('Luminar Technolab ', 'Flutter development', '10:30 AM', false),
        // Add more chat items here
      ],
    );
  }
}
class ChatItem extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final bool unread;

  ChatItem(this.name, this.message, this.time, this.unread);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/icons/flutterimage.png'),
      ),
      title: Text(name),
      subtitle: Text(message),
      trailing: Column(
        children: <Widget>[
          Text(time),
          if (unread) Icon(Icons.brightness_1, color: Colors.green)
        ],
      ),
      onTap: () {
Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ChatScreen()));
        // Open chat screen
      },
    );
  }
}