import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'ParaguayNews'),
      initialRoute: '/',
      routes: {
        '/otro': (context) => FirstScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int _counter = 0;
  String _contenido = '';

  //Animaciones
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    _counter = 1;
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 0, end: 100).animate(controller)
      ..addListener(() {
        setState(() {
          // Cambio el estado
        });
      });

    controller.forward();
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });

    Navigator.pushNamed(context, '/otro');
  }

  void _setContenido(String nuevo) {
    setState(() {
      _contenido = nuevo;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: const <Widget>[
          Text("I'm dedicating every day to you"),
          Text('Domestic life was never quite my style'),
          Text('When you smile, you knock me out, I fall apart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text("I'm dedicating every day to you"),
          Text('Domestic life was never quite my style'),
          Text('When you smile, you knock me out, I fall apart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text("I'm dedicating every day to you"),
          Text('Domestic life was never quite my style'),
          Text('When you smile, you knock me out, I fall apart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text("I'm dedicating every day to you"),
          Text('Domestic life was never quite my style'),
          Text('When you smile, you knock me out, I fall apart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
          Text('And I thought I was so smart'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen - !'),
      ),
      body: ListView(children: [
        Column(
          children: [
            Row(
              children: [
                FittedBox(
                  child: Image.asset(
                    'images/placeholder.jpg',
                    width: MediaQuery.of(context).size.width,
                  ),
                  fit: BoxFit.fill,
                ),
              ],
            ),
            Container(
              child: Text(
                'Titulo de Noticia - Este titulo es bastante largo veamos que tal se ve esta verga',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              margin: const EdgeInsets.all(12.0),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    'Esto es un texto multilinea. Donde se supone que esto se va a renderear de otra forma. Nunca sabermos si esto funca o no.\n\nO si es alguna cosa rara del puto dart.\n\nEn otras noticias....',
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    'Esto es un texto multilinea. Donde se supone que esto se va a renderear de otra forma. Nunca sabermos si esto funca o no.\n\nO si es alguna cosa rara del puto dart.\n\nEn otras noticias....',
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    'Esto es un texto multilinea. Donde se supone que esto se va a renderear de otra forma. Nunca sabermos si esto funca o no.\n\nO si es alguna cosa rara del puto dart.\n\nEn otras noticias....',
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    'Esto es un texto multilinea. Donde se supone que esto se va a renderear de otra forma. Nunca sabermos si esto funca o no.\n\nO si es alguna cosa rara del puto dart.\n\nEn otras noticias....',
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    'Esto es un texto multilinea. Donde se supone que esto se va a renderear de otra forma. Nunca sabermos si esto funca o no.\n\nO si es alguna cosa rara del puto dart.\n\nEn otras noticias....',
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    'Esto es un texto multilinea. Donde se supone que esto se va a renderear de otra forma. Nunca sabermos si esto funca o no.\n\nO si es alguna cosa rara del puto dart.\n\nEn otras noticias....',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              margin: const EdgeInsets.all(12.0),
            ),
          ],
        )
      ]),
    );
  }
}
