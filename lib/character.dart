import 'dart:math';

abstruct class Character {
  Character({
    required this.name,
    required this.hp,
  }) : maxHp = hp;
  int attack();
  final String name;
  int hp;
  final int maxHp;
  final Random _random = Random();

  void takeDamage(int damage) {
    hp -= damage;
    if (hp < 0) hp = 0;
  }
  bool get isAlive => hp > 0;

  String get hpBar {
    int filled = (hp / maxHp * 10).round();
    int empty = 10 - filled;
    return '[${'█' * filled}${'░' * empty}] $hp/$maxHp';
  }

  void describe() {
    print('$name $hpBar');
  }
  @override
  String toString();
}
