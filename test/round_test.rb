require 'minitest/autorun'
require 'minitest/pride'
require '../lib/card'
require '../lib/turn'
require '../lib/deck'
require '../lib/round'
require 'pry'

class RoundTest < Minitest::Test

  def setup
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    @cards = [card_1, card_2, card_3]
    @deck = Deck.new(@cards)
    deck = Deck.new([card_1, card_2, card_3])
    @round =Round.new(@deck)
    # round = Round.new(deck)
    # round.deck
    # round.turns
  end

  def test_round_exists
    round = Round.new(@deck)
    assert_instance_of Round, round
    # assert_equal @round, Round.new(@deck)
  end

  # def test_round_deck
  #   assert_equal Round.new(@deck), @round
  # end

  # def test_round_turns
  # end

  end
