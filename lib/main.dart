import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home_page(),debugShowCheckedModeBanner: false,);
  }
}
class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  bool? _ischecked=false;
  bool _switch=false;
  List<String> li=['Aditya engineering college','Aditya college of enigineering and technology','Aditya colloge of engineering'];
   String? drop='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),body: Column(children: [
      Row(
        children: [
          Checkbox(value: _ischecked, onChanged: (val){
          setState(() {
            _ischecked=val;
          });
    },),SizedBox(width: 100,),Text('save the credentials',style: TextStyle(fontSize: 20),),SizedBox(width: 100,),Icon(Icons.save)
        ],
      ),SizedBox(height: 30,),
    SwitchListTile(title:Text('Allow Notification'),value: _switch, onChanged: (val){
      setState(() {
        _switch=val;
      });
    }),SizedBox(height: 50,),
      DropdownMenu(hintText: 'select',
        dropdownMenuEntries: li.map<DropdownMenuEntry<String>>((e) {
      return DropdownMenuEntry(value: e, label:e);

      } ).toList(),onSelected: (val){
      setState(() {
        drop=val;
      });
      },),SizedBox(height: 50,),_ischecked==true&&_switch?
      ElevatedButton(onPressed: (){
        setState(() {
          if(_switch==true&&_ischecked==true){
            print('checked');
          }
        });
      }, child: Text('check')):Text('')
    ],),);
  }
}

