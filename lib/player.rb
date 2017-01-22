class Player
  attr_reader :name, :hit_points
  attr_accessor :chosen_outcome

  POSSIBLE_OUTCOMES = ["ROCK", "PAPER", "SCISSORS"]
  INITIAL_HIT_POINTS = 30
  POINTS_LOST_MOVE = 10

  def initialize(name = "Server", chosen_outcome = "", hit_points = INITIAL_HIT_POINTS)
    @name = name
    @hit_points = hit_points
    @chosen_outcome = chosen_outcome
  end

  def randomizer
    POSSIBLE_OUTCOMES.sample
  end

  def deduct_hp
    @hit_points -= POINTS_LOST_MOVE
  end
end
