import 'package:flutter/material.dart';
import 'package:flutter_app_drawer/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final items_name = [
    'Desktop',
    'Smart phone',
    'Cable',
    'Mouse',
    'Smart Screen',
    'Tablet',
    'Camera'
  ];
  final List<IconData> icons_name = [
    Icons.computer,
    Icons.phone_android_outlined,
    Icons.cable,
    Icons.mouse,
    Icons.smart_screen_rounded,
    Icons.tablet_mac,
    Icons.camera_alt,
  ];
  final items_price = [
    '\$200.0',
    '\$1000.0',
    '\$10.0',
    '\$200.0',
    '\$200.0',
    '\$1000.0',
    '\$1000.0'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'List View Demo',
      home: Scaffold(
          appBar: AppBar(
            title: const Text("List Of Items"),
            actions: [
              IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
            ],
          ),
          body: Container(
            height: 1000,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10), 
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                    border: Border.all(color: const Color.fromARGB(255, 201, 201, 201)),
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                    ),
                    child: ListTile(
                      leading: Icon(icons_name[index],size: 40,color: Colors.black,),
                      title: Text(
                        items_name[index],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      subtitle: Text(items_price[index]),
                      trailing:
                        const Icon(Icons.edit,color: Colors.black,), 
                      contentPadding: const EdgeInsets.all(1),
                    ),
                  );
                },
                separatorBuilder: (context, index){
                  return const Divider(
                    height: 0,
                    thickness: 0,
                    color: Colors.white,
                  );
                },
                itemCount: items_name.length),
          ),
          drawer:  drawer(),
          ),
          
    );
  }
}