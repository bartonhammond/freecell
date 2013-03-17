part of freecell;

/** The main controller of application.
 */
class MainController extends Control {
  
  MainController() {
    
  }
  String card(List<Card> cards, var row, var cell){
    var pos = row + (cell * 8);
    try {
      Card card = cards.elementAt(pos);
      return card.toString();
    } catch (e) {
      return null;
    }
  }

}


