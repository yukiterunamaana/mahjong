import 'package:mahjong/run.dart';
import 'package:mahjong/tile.dart';

class Hand {
  List<Tile> contents;
  Hand(this.contents);

  @override
  void add(Tile tile) {
    contents.add(tile);
    sortTiles();
  }

  @override
  void addAll(List<Tile> tiles) {
    contents.addAll(tiles);
    sortTiles();
  }

  void sortTiles() {
    contents.sort((a, b) => a.value.compareTo(b.value));
  }

  List<Combination> parseCombinations() {
    List<Combination> combinations = [];

    // Check for Kan combinations
    for (int i = 0; i < contents.length - 3; i++) {
      Kan k =
          Kan([contents[i], contents[i + 1], contents[i + 2], contents[i + 3]]);
      if (k.validate(tiles)) {
        combinations.add(Kan(
            [contents[i], contents[i + 1], contents[i + 2], contents[i + 3]]));
        i += 3;
      }
    }

    // Check for Pon combinations
    for (int i = 0; i < contents.length - 2; i++) {
      Pon p = Pon([contents[i], contents[i + 1], contents[i + 2]]);
      if (p.validate(tiles)) {
        combinations.add(Pon([contents[i], contents[i + 1], contents[i + 2]]));
        i += 2;
      }
    }

    // Check for Chi combinations
    for (int i = 0; i < contents.length - 2; i++) {
      Chi c = Chi([contents[i], contents[i + 1], contents[i + 2]]);
      if (c.validate(tiles)) {
        combinations.add(Chi([contents[i], contents[i + 1], contents[i + 2]]));
        i += 2;
      }
    }

    return combinations;
  }
}
