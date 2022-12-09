import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:pokedex/api/api_repository.dart';
import 'package:pokedex/models/poke_info.dart';
import 'package:pokedex/models/pokemon_list.dart';

class PokeInfoPage extends StatefulWidget {
  PokeInfoPage({this.name, required this.list, required this.url}) : super();
  final name;
  final List<Results> list;
  final String url;

  @override
  State<PokeInfoPage> createState() => _PokeInfoPageState();
}

class _PokeInfoPageState extends State<PokeInfoPage> {
  PokeInfo? info;
  final apiRepo = PokeApiRepository();
  fetchInfo(String url) async {
    setState(() {
      isLoading = true;
    });
    info = await apiRepo.fetchSelectedPokemonByURL(url);
    setState(() {
      isLoading = false;
    });
  }

  bool isLoading = true;
  @override
  void initState() {
    fetchInfo(widget.url);
    super.initState();
  }

  Widget infoOrLoading(PokeInfo poke) {
    final img = Image.network(poke.sprites.frontShiny, fit: BoxFit.fill,
        loadingBuilder: (context, child, loadingProgress) {
      if (loadingProgress == null) {
        print('no loading');
        return child;
      }
      print('here');
      return Center(
          child: CircularProgressIndicator(
        value: loadingProgress.expectedTotalBytes != null
            ? loadingProgress.cumulativeBytesLoaded /
                loadingProgress.expectedTotalBytes!
            : null,
      ));
    });

    return isLoading
        ? CircularProgressIndicator()
        : Column(
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.height / 3.5, child: img),
              ListTile(
                title: Text(poke.order.toString()),
                leading: Text('order'),
              ),
              ListTile(
                title: Text(poke.name),
                leading: Text('name'),
              ),
              ListTile(
                title: Text(poke.height.toString()),
                leading: Text('height'),
              ),
              ListTile(
                title: Text(poke.weight.toString()),
                leading: Text('weight'),
              ),
              ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: poke.types.map((e) => Text(e.type.name)).toList(),
                ),
                leading: Text('type'),
              ),
              ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                      poke.abilities.map((e) => Text(e.ability.name)).toList(),
                ),
                leading: Text('abilities'),
              ),
            ],
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemon Infos'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50),
        child: Swiper(
          itemBuilder: (context, index) {
            if (info == null) {
              return Center(child: CircularProgressIndicator());
            }
            final PokeInfo selectedPokemon = info!;
            return Container(
                height: 200,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(child: infoOrLoading(selectedPokemon)));
          },
          indicatorLayout: PageIndicatorLayout.COLOR,
          autoplay: false,
          viewportFraction: 0.8,
          scale: 0.9,
          onIndexChanged: (index) {
            fetchInfo(widget.list[index].url);
          },
          itemCount: widget.list.length,
          pagination: const SwiperPagination(),
          control: const SwiperControl(),
        ),
      ),
    );
  }
}
