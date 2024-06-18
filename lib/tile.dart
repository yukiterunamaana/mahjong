enum dots { PIN1, PIN2, PIN3, PIN4, PIN5, PIN6, PIN7, PIN8, PIN9 }

enum bamboo { SOU1, SOU2, SOU3, SOU4, SOU5, SOU6, SOU7, SOU8, SOU9 }

enum numbers { MAN1, MAN2, MAN3, MAN4, MAN5, MAN6, MAN7, MAN8, MAN9 }

enum winds { TOU, NAN, SHA, PEI }

enum dragons { CHUN, HAKU, HATSU }

class Tile {
  final value;
  Tile(this.value);

  String toString() {
    return value.toString();
  }

  bool isDora(Tile indicator) {
    return indicator.value + 1 == value;
  }
}
