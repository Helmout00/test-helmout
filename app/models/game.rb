class Game < ApplicationRecord
  COLORS = [:red, :yellow, :blue, :green]
  has_one :orchard
  has_one :dice
  has_one :crow
  has_many :fruits, through: :orchard

  before_create :setup_game


  #return Game::ActiveRecord_Relation
  class << self

    def order_by_last_ressently_played
      self.order updated_at: :desc
    end

    def recent
      start_range = 1.week.ago
      stop_range = Time.now
      self.where created_at: [start_range..stop_range]
    end

  end

  def status1
    "Crow advancement is #{crow.advancement}/6
    There are #{fruits.on_tree.count} fruits left in orchard."
  end

  def roll_dice
    dice.roll
    case dice.showing_face
    when :crow
      crow.step
    when :basket
      orchard.pick_fruit
    else
      color = dice.showing_face
      orchard.pick_fruit color
    end
  end

  def setup_game
    self.orchard ||= Orchard.new
    self.dice ||= Dice.new
    self.crow ||= Crow.new
  end
end
