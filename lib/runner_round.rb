require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'
require '../lib/deck'
require 'pry'

class RoundTest < Minitest::Test

  def setup
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    @cards = [card_1, card_2, card_3]
    @deck = Deck.new(@cards)
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    round.deck
    round.turns
  end
    def test_it_has_a_card
      card - Card.new
    end
binding.pry

  end
