require 'minitest/autorun'
require_relative 'bowling_game'

class BowlingGameTest < MiniTest::Unit::TestCase
  def test_all_gutter_game
    game = BowlingGame.new
    20.times do
      game.record_shot(0)
    end
    assert_equal 0, game.score
  end

  def test_all_1pin_game
    game = BowlingGame.new
    20.times do
      game.record_shot(1)
    end
    assert_equal 20, game.score
  end
end