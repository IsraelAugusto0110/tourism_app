import 'location_fact.dart';

class Location {
  final int id;
  String name, imagePath;
  final List<LocationFact> facts;
  Location(this.id, this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(
          1, 'Arashiyama Bamboo Grove', 'assets/images/kiyomizu-dera.jpg', [
        LocationFact('Summary',
            'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
        LocationFact('How to Get There',
            'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
      Location(2, 'Mount Fuji', 'assets/images/fuji.jpg', [
        LocationFact('Summary',
            'Japan’s Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called “Fuji-san,” it’s the country’s tallest peak, at 3,776 meters. A pilgrimage site for centuries, it’s considered one of Japan’s 3 sacred mountains, and summit hikes remain a popular activity. Its iconic profile is the subject of numerous works of art, notably Edo Period prints by Hokusai and Hiroshige.'),
        LocationFact('Did You Know',
            'There are three cities that surround Mount Fuji: Gotemba, Fujiyoshida and Fujinomiya.'),
      ]),
      Location(3, 'Arashiyama Bamboo Grove', 'assets/images/arashiyama.jpg', [
        LocationFact('Summary',
            'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
        LocationFact('How to Get There',
            'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
    ];
  }

  static Location fetchById(int locationId) {
    List<Location> locations = Location.fetchAll();

    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationId) {
        return locations[i];
      }
    }
    return locations[0];
  }
}
