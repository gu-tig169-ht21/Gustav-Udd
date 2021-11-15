import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainView(),
    );
  }
}

class MainView extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
            child: Padding(
          padding: const EdgeInsets.only(left: 1.0),
          child: Text("TIG169 TODO LISTA"),
        )),
        actions: [],
      ),
      body: ListView(children: [
        _ruta("Gå upp ur sängen"),
        _ruta("Äta mat"),
        _ruta("Gå och lägga sig"),
      ]),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SecondView()));
        },
      ),
    );
  }
}

class SecondView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Text("TIG169 TODO LISTA"),
          )),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            _textField(),
            Padding(
              padding: EdgeInsets.only(left: 100.0, top: 50),
              child: Row(children: [
                _plusIcon(),
                _textBox(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _textBox() {
  return Text("Lägg till en uppgift");
}

Widget _plusIcon() {
  return IconButton(
    icon: Icon(Icons.add),
    onPressed: () {},
  );
}

Widget _textField() {
  return TextField(
      decoration: InputDecoration(
          hintText: "Lägg till på To-Do lista",
          border: const OutlineInputBorder()));
}

Widget _ruta(String toDo) {
  return CheckboxListTile(
      title: Text(toDo), value: false, onChanged: (value) {});
}
