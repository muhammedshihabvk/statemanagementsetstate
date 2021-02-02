import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("State Management SetState"),
        ),
          body: MyHomePage()
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      StateLessWidget(),
      StatefullWidget(),
        ],
      ),
    );
  }
}

class StateLessWidget extends StatelessWidget {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print("Stateless widget build");
    return Container(
      color: Colors.blueGrey,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .4,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListTile(
              leading: Text(
                counter.toString(),
                style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold),
              ),
              title: Text("StateLess widget"),
            ),
            ListTile(
              trailing: IconButton(
                onPressed: () {
                  counter++;
                  print("Stateless counter"+counter.toString());
                },
                icon: Icon(Icons.arrow_forward),
              ),
              title: Text("ADD"),
            ),
            ListTile(
              trailing: IconButton(
                onPressed: () {
                  counter--;
                  print("Stateless counter"+counter.toString());
                },
                icon: Icon(Icons.arrow_back),
              ),
              title: Text("SUB"),
            ),
          ],
        ),
      ),
    );
  }
}

class StatefullWidget extends StatefulWidget {
  @override
  _StatefullWidgetState createState() => _StatefullWidgetState();
}

class _StatefullWidgetState extends State<StatefullWidget> {
  int counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("didChangeDependencies");
  }


  @override
  Widget build(BuildContext context) {
    print("Stateful widget build");
    return Container(
      color: Colors.red,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .4,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListTile(
              leading: Text(
                counter.toString(),
                style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold),
              ),
              title: Text("StateFull widget"),
            ),
            ListTile(
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    counter++;
                    print("Statefull widget counter"+counter.toString());
                  });
                },
                icon: Icon(Icons.arrow_forward),
              ),
              title: Text("ADD"),
            ),
            ListTile(
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    counter--;
                    print("Statefull widget counter"+counter.toString());
                  });

                },
                icon: Icon(Icons.arrow_back),
              ),
              title: Text("SUB"),
            ),
          ],
        ),
      ),
    );
  }
}
