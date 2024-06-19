class Tile {
  final String value;
  final String suit;

  Tile(this.suit, this.value);

  @override
  String toString() => "$value$suit";
}

List<Tile> tiles = [
  Tile('1', 'man'),
  Tile('2', 'man'),
  Tile('3', 'man'),
  Tile('4', 'man'),
  Tile('5', 'man'),
  Tile('6', 'man'),
  Tile('7', 'man'),
  Tile('8', 'man'),
  Tile('9', 'man'),
  Tile('1', 'pin'),
  Tile('2', 'pin'),
  Tile('3', 'pin'),
  Tile('4', 'pin'),
  Tile('5', 'pin'),
  Tile('6', 'pin'),
  Tile('7', 'pin'),
  Tile('8', 'pin'),
  Tile('9', 'pin'),
  Tile('1', 'sou'),
  Tile('2', 'sou'),
  Tile('3', 'sou'),
  Tile('4', 'sou'),
  Tile('5', 'sou'),
  Tile('6', 'sou'),
  Tile('7', 'sou'),
  Tile('8', 'sou'),
  Tile('9', 'sou'),
  Tile('East', 'wind'),
  Tile('South', 'wind'),
  Tile('West', 'wind'),
  Tile('North', 'wind'),
  Tile('Red', 'dragon'),
  Tile('Green', 'dragon'),
  Tile('White', 'dragon'),
];

List<Tile> red_tiles = [
  Tile('5R', 'man'),
  Tile('5R', 'pin'),
  Tile('5R', 'sou'),
];
