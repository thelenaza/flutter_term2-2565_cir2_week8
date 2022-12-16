import 'package:flutter/material.dart';

class ListMenu{
  final String? title;
  final String? subtitle;
  final IconData icon;

  const ListMenu({this.title,this.subtitle,required this.icon});
}

List<ListMenu>menus = [
  const ListMenu(title: 'MENU-1',subtitle: 'SUB-1',icon: Icons.account_box),
  const ListMenu(title: 'MENU-2',subtitle: 'SUB-2',icon: Icons.dark_mode),
  const ListMenu(title: 'MENU-3',subtitle: 'SUB-3',icon: Icons.wallet),
  const ListMenu(title: 'MENU-4',subtitle: 'SUB-4',icon: Icons.wifi),
  const ListMenu(title: 'MENU-5',subtitle: 'SUB-5',icon: Icons.cake_rounded)
];
class ListViewMenu extends StatelessWidget {
  const ListViewMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Menu"),
      ),
      body: Container(
        child: ListView.separated(
          padding: EdgeInsets.all(5),
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${menus[index].title}'),
              subtitle: Text('${menus[index].subtitle}'),
              leading: CircleAvatar(
                child: Icon(menus[index].icon),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                debugPrint(menus[index].title);
              },
            );
          },
          separatorBuilder: (_, index) {
            return Divider(color: Colors.pinkAccent,);
          },

          itemCount: menus.length,
        ),
      ),
    );
  }
}
