part of freecell;

class Card {
  
  num number; //1-13
  String suit;
  
  Card(this.number, this.suit);
  
  String toString() {
    if (number == 1) {
      return 'web/images/ace_of_$suit.png';
    } else if (number == 11) {
      return 'web/images/jack_of_$suit.png';
    } else if (number == 12) {
      return 'web/images/queen_of_$suit.png';
    } else if (number == 13) {
      return 'web/images/king_of_$suit.png';
    } else {
      return 'web/images/${number}_of_$suit.png';
    }
  }
  
}


