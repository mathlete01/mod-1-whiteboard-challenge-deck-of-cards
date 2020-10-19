#by Will Lytle & Matty Sallin

class Deck
  
  attr_reader :cards

  def build_deck
    suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
    @cards = []
    for i in 0...suits.length 
      ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
      num = 0    
      while num < ranks.length
        @cards << Card.new(suits[i], ranks[num])
        num += 1
      end
    end
  end

  def initialize
    build_deck
  end

  def choose_card
    chosen = rand(@cards.length - 1)
    @cards[chosen]
    @cards.slice!(chosen)
  end

end

class Card

  attr_reader :rank, :suit

  def initialize(suit, rank)
    @rank = rank
    @suit = suit
  end

end
