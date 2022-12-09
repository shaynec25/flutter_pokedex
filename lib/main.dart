import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokedex/api/api_repository.dart';
import 'package:pokedex/models/pokemon_list.dart';
import 'views/pokeinfopage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokedex',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(title: 'Pokedex'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({required this.title}) : super();
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final apiRepo = PokeApiRepository();
  // PokeInfo? a;
  PokemonList? b;
  @override
  initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    fetchData();
    super.initState();
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  fetchData() async {
    b = await apiRepo.fetchAllPokemon(0);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return b == null
        ? Scaffold(
            body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Center(child: CircularProgressIndicator())))
        : Scaffold(
            appBar: AppBar(
              title: Text(widget.title),
            ),
            body: Center(
                child: ListView.builder(
                    itemCount: b!.results.length,
                    itemBuilder: (context, int index) {
                      return ListTile(
                          title: Text(b!.results[index].name),
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PokeInfoPage(
                                      name: b!.results[index].name,
                                      list: b!.results,
                                      url: b!.results[index].url))));
                    })),
          );
  }
}
