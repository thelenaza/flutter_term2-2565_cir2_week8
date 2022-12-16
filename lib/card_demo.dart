import 'package:flutter/material.dart';
class Menu{
  final String? title;
  final IconData? icon;
  final Color? bkColor;

  const Menu({this.title,this.icon,this.bkColor});
}
List<Menu> menus = [
  const Menu(title: 'MENU-1',icon: Icons.facebook,bkColor: Colors.white),
  const Menu(title: 'MENU-2',icon: Icons.facebook,bkColor: Colors.white),
  const Menu(title: 'MENU-3',icon: Icons.facebook,bkColor: Colors.white),
  const Menu(title: 'MENU-4',icon: Icons.facebook,bkColor: Colors.white),
  const Menu(title: 'MENU-5',icon: Icons.facebook,bkColor: Colors.white),

];
class CardDemo extends StatelessWidget{
  const CardDemo({Key?key}):super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Demo"),
      ),
      body: Container(
        child: GridView.count(
            crossAxisCount: 3,
          children: List.generate(menus.length, (index) {
            return Card(
              color: menus[index].bkColor,
              margin: EdgeInsets.all(12),
              child: Center(
                child: InkWell(
                  onTap: (){
                    debugPrint(menus[index].title);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(menus[index].icon,size:40,color: Colors.blueAccent,),
                      Text(menus[index].title!,style: TextStyle(fontSize: 15,color: Colors.black),)
                    ],
                  ),
                ),
              ),
            );
          },),
        ),
      ),
    );
  }
}