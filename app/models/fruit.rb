class Fruit < ApplicationRecord
  belongs_to :orchard

  delegate :game, to: :orchard

  class << self

    def on_tree
      self.where croped_at: nil
    end

    def order_by_last_ressently_fruit
    self.where.not(croped_at: nil).order croped_at: :asc
    end

    # Return an ActiveRecord::Relation
    # if nil is passed as color, it is treated as any
    # color (it does not scope).
    def of_color color
      condition = color && {color: color.downcase.to_sym}
      self.where condition
    end

    def on_basket
      self.where.not(croped_at: nil).order :croped_at
    end

  end
      
  def crop
    self.croped_at = DateTime.now
  end
end
