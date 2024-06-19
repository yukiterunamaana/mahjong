import 'package:mahjong/tile.dart';

class Combination {
  final List<Tile> tiles;

  Combination(this.tiles);

  @override
  String toString() {
    return tiles.map((tile) => tile.value).join('') + tiles[0].suit;
  }

  bool areTilesInSequence(List<Tile> tiles) {
    for (int i = 0; i < tiles.length - 1; i++) {
      if (int.parse(tiles[i].value) + 1 != int.parse(tiles[i + 1].value)) {
        return false;
      }
    }
    return true;
  }

  bool areTilesOfSameSuit(List<Tile> tiles) {
    for (int i = 0; i < tiles.length - 1; i++) {
      if (tiles[i].suit != tiles[i + 1].suit) {
        return false;
      }
    }
    return true;
  }

  bool areTilesOfSameValue(List<Tile> tiles) {
    for (int i = 0; i < tiles.length - 1; i++) {
      if (tiles[i].value != tiles[i + 1].value) {
        return false;
      }
    }
    return true;
  }

  bool areTilesOfSameKind(List<Tile> tiles) {
    if (!areTilesOfSameSuit(tiles) || !areTilesOfSameValue(tiles)) return false;
    return true;
  }
}

class Chi extends Combination {
  Chi(super.tiles);
  bool validate(List<Tile> tiles) {
    if (tiles.length != 3 ||
        !areTilesOfSameSuit(tiles) ||
        !areTilesInSequence(tiles) ||
        !areTilesNotDragonsOrWinds(tiles)) return false;
    return true;
  }

  bool areTilesNotDragonsOrWinds(List<Tile> tiles) {
    for (Tile tile in tiles) {
      if (tile.suit == 'Dragon' || tile.suit == 'Wind') {
        return false;
      }
    }
    return true;
  }
}

class Pon extends Combination {
  Pon(super.tiles);
  bool validate(List<Tile> tiles) {
    if (tiles.length != 3 || !areTilesOfSameKind(tiles)) return false;
    return true;
  }
}

class Kan extends Combination {
  Kan(super.tiles);
  bool validate(List<Tile> tiles) {
    if (tiles.length != 4 || !areTilesOfSameKind(tiles)) return false;
    return true;
  }
}

class Pair extends Combination {
  Pair(super.tiles);
  bool validate(List<Tile> tiles) {
    if (tiles.length != 2 || !areTilesOfSameKind(tiles)) return false;
    return true;
  }
}
