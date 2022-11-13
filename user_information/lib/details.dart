import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  DetailPage(this.index);
  final int index;

  List<dynamic> name =
    ["Max", "Sam", "Leo", "Peter", "Parker", "Edward", "Mary", "Ashe", "Kate", "Shadow"];
  List<dynamic> age =
    [20, 21, 22, 23, 24, 25, 26, 27, 28, 29];
  List<dynamic> country =
    ["USA", "Korea", "Italy", "China", "France", "USA", "Korea", "Italy", "China", "France"];
  List<dynamic> picture =
    [
      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "https://st3.depositphotos.com/1037987/15097/i/600/depositphotos_150975580-stock-photo-portrait-of-businesswoman-in-office.jpg",
      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "https://st3.depositphotos.com/1037987/15097/i/600/depositphotos_150975580-stock-photo-portrait-of-businesswoman-in-office.jpg",
      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "https://st3.depositphotos.com/1037987/15097/i/600/depositphotos_150975580-stock-photo-portrait-of-businesswoman-in-office.jpg",
      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "https://st3.depositphotos.com/1037987/15097/i/600/depositphotos_150975580-stock-photo-portrait-of-businesswoman-in-office.jpg",
      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "https://st3.depositphotos.com/1037987/15097/i/600/depositphotos_150975580-stock-photo-portrait-of-businesswoman-in-office.jpg",
    ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('detail page'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              width: 300,
              height: 40,
              color: Colors.grey,
              child: Text("User Infomation ", textAlign: TextAlign.center, style: TextStyle(fontSize: 30),),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              width: 300,
              height: 40,
              color: Colors.grey,
              child: Text("Name : ${name[index].toString()}", textAlign: TextAlign.center, style: TextStyle(fontSize: 25),),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              width: 300,
              height: 40,
              color: Colors.grey,
              child: Text("Age : ${age[index].toInt()}", textAlign: TextAlign.center, style: TextStyle(fontSize: 25),),
            ),
            Container(
              margin: EdgeInsets.only(top: 50, bottom: 50),
              width: 300,
              height: 40,
              color: Colors.grey,
              child: Text("Country : ${country[index].toString()}", textAlign: TextAlign.center, style: TextStyle(fontSize: 25), textHeightBehavior: TextHeightBehavior(),),
            ),
            Image.network(picture[index].toString(), width: 250, height: 250,),
          ],
        )
      )
    );
  }
}


// class User{
//   String name;
//   int age;
//   String birthday;
//   User(this.name, this.age, this.birthday);
// }