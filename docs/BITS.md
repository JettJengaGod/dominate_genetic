



Bit sequence:
Number of Kingdom Cards: 10
Kingdom cards by cost tier:

2: 2
3: 3
4: 3
5: 2

Choices:

When to gain what?

How many to gain?
    3 bits per
        000 = Don't
        001 = 1
        010 = 2
        011 = 3
        100 = 4
        101 = 5
        110 = 6
        111 = Till gone
Order of preference?
    Depends on tier
        2 = 1 bit
        3 = 5 bit
            00000 = 1,2,3,4
            00001 = 1,2,4,3
            00010 = 1,3,2,4
            00011 = 1,3,4,2
            00100 = 1,4,2,3
            00101 = 1,4,3,2
            00110 = 2,1,3,4
            00111 = 2,1,4,3
            01000 = 2,3,1,4
            01001 = 2,3,4,1
            01010 = 2,4,1,3
            01011 = 2,4,3,1
            01100 = 3,1,2,4
            01101 = 3,1,4,2
            01110 = 3,2,1,4
            01111 = 3,2,4,1
            10000 = 3,4,1,2
            10001 = 3,4,2,1
            10010 = 4,1,2,3
            10011 = 4,1,3,2
            10100 = 4,2,1,3
            10101 = 4,2,3,1
            10110 = 4,3,1,2
            10111 = 4,3,2,1
        4 = 3 bit
            000 = 1,2,3
            001 = 1,3,2
            010 = 2,1,3
            011 = 2,3,1
            100 = 3,1,2
            101 = 3,2,1
        5 = 1 bit
        6 = Gold
        7 = Gold
        8 = Provence

Order of Cards
    Cellar Moat Silver Village Woodcutter Workshop Militia Remodel Smithy Market Mine

Example bitstring
                1-10100-001-1                   101-010 100-101-010-101  010-101-010 101-001
    Tiers: 2,1 4,2,1,3 1,3,2 2,1 5    2  4   5    2  5    2  5   2   5   1

Example strategy based on said bitstring
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