{
name: 'Example '
requires: ['Cellar','Moat','Village','Woodcutter','Workshop','Militia','Remodel','Smithy','Market','Mine']
gainPriority: (state, my) -> [
  "Province"
  "Duchy" if 0 < state.gainsToEndGame() <= 5
  "Estate" if 0 < state.gainsToEndGame() <= 2
  "Gold"
  "Mine" if my.countInDeck("Mine") < 1
  "Market" if my.countInDeck("Market") < 5
  "Militia" if my.countInDeck("Militia") < 2
  "Smithy" if my.countInDeck("Smithy") < 5
  "Remodel" if my.countInDeck("Remodel") < 2
  "Workshop" if my.countInDeck("Workshop") < 5
  "Village" if my.countInDeck("Village") < 5
  "Silver" if my.countInDeck("Silver") < 4
  "Woodcutter" if my.countInDeck("Woodcutter") < 5
  "Moat" if my.countInDeck("Moat") < 2
  "Cellar" if my.countInDeck("Cellar") < 4
  "Copper" if state.gainsToEndGame() <= 3
]
}