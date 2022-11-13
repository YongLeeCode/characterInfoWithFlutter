import 'package:flutter/material.dart';
import 'package:user_information/details.dart';
import 'newperson.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int count = 10;

  void newPerson() {
      NewPerson();
      count +=1;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Characters Information")
      ),
      body: Center(
         child: _buildListView()
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NewPerson())
          );
        },
        tooltip: 'New',
        child: Icon(Icons.add),
      )
    );
  }

  ListView _buildListView(){
    return ListView.builder(
      itemCount: count,
      itemBuilder: (_, index){
        return Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
          ),
          child: ListTile(
              title:Text('User ${index+1}'),
              subtitle: Text('Click to see detail information'),
              leading: Icon(Icons.face_retouching_natural),
              trailing: Icon(Icons.chevron_right),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailPage(index))
                );
              }
          ),
        );
      },
    );
  }
}

class User{
  String name;
  User(this.name);
}