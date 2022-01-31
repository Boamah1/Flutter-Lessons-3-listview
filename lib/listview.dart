import 'package:flutter/material.dart';

class HomePageState extends StatefulWidget {
  const HomePageState({Key? key}) : super(key: key);

  @override
  _HomePageStateState createState() => _HomePageStateState();
}

class _HomePageStateState extends State<HomePageState> {
  List names = ["Nana", "Kelvin", "Selorm"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: mrselormprofile(
              profile: const AssetImage("images/12324.png"),
              mytime: "12:22",
              username: "Mr Kelvin",
              usermsg: "yuwejgfikjbsj hewwebc",
              msgvalue: "1",
            ),
            onTap: () {
              print(index);
            },
          );
        },
      ),
    );
  }
}

mrselormprofile({profile, mytime, username, usermsg, msgvalue}) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: profile,
      // AssetImage("images/WhatsA.jpeg"),
    ),
    title: Text(
      username,
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
    subtitle: Text(
      usermsg,
      style: const TextStyle(color: Colors.black),
    ),
    trailing: Column(
      children: [
        Text(
          mytime,
          style: const TextStyle(color: Colors.black),
        ),
        const SizedBox(
          height: 10,
        ),
        CircleAvatar(
          radius: 10,
          backgroundColor: Colors.greenAccent,
          child: Text(
            msgvalue,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ],
    ),
  );
}
