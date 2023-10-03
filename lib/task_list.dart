import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  final List<String> tasks;

  const TaskList(this.tasks, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return getDetail(index, tasks[index]);
      },
    );
  }



 Widget getDetail(int index, String name) {
  final title = Container(
    margin: const EdgeInsets.only(
      top: 5,
      left: 10,
    ),
    child: Text(
      name,
      style: const TextStyle(
        fontFamily: "Roboto",
        fontSize: 18,
        fontWeight: FontWeight.w900,
        color: Colors.black,
      ),
    ),
  );
  final detail = Container(
    margin: const EdgeInsets.only(top:20, left: 10, bottom: 25),
    child: Text(
      name,
      style: const TextStyle(
        fontFamily: "Roboto",
        fontSize: 16,
        fontWeight: FontWeight.w300,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    ),
  );
  final image = SizedBox(
    width: 150,
    height: 150,
    child: CircleAvatar(
      radius: 100,
      backgroundImage: NetworkImage(
        'https://pbs.twimg.com/media/FM8T97rWQAUcd-a.png',
      ),
    ),
  );



  final info = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title,
          detail,
        ],
      ),
      image,
    ],
  );
  return Card(
    color: Color.fromARGB(255, 157, 237, 241),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: info,
    ),
  );
}
}
