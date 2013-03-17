library freecell;

import 'dart:html';
import 'package:rikulo_ui/view.dart'; 
import 'package:rikulo_ui/event.dart';
import 'package:rikulo_uxl/uxl.dart'; 

part 'models/Card.dart';
part 'views/FreeCellTemplate.uxl.dart'; 
part 'controllers/MainController.dart';


/** The entry point of Dart application.
 */
void main() {
  FreeCellTemplate(cards: loadCards())[0].addToDocument();
}
/** Load model from local storage, or return an empty [Todo] list if not 
 * available.
 */
List<Card> loadCards() {
  final List<Card> cards = new List<Card>();
  var suits = ['hearts','spades','diamonds','clubs'];
  
  for (var suit in suits) {
    for (var i=1; i<=13; i++) {
      Card card = new Card(i, suit);
      cards.add(card);
    }
    
  }
  return cards;
}

