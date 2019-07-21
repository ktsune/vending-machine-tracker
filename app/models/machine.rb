class Machine < ApplicationRecord
  has_many :machine_snacks
  has_many :snacks, through: :machine_snacks

  validates_presence_of :location

  belongs_to :owner

  def average_price
    self.snacks.average(:price).to_i
  end

  def count_of_items
    self.snacks.count
  end

end
