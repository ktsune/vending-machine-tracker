require 'rails_helper'

RSpec.describe Snack, type: :model do
  describe "relationships" do
    it {should have_many :machine_snacks}
    it {should have_many(:machines).through(:machine_snacks)}
  end

  describe 'class methods' do
    it 'I can calculate average price of all snacks in that machine' do
      @owner = Owner.create(name: "Sam's Snacks")
      @dons  = @owner.machines.create(location: "Don's Mixed Drinks")
      @kitkat = @dons.snacks.create(name: "Kit Kat", price: 2)
      @twix = @dons.snacks.create(name: "Twix", price: 2)

      expect(page).to have_content(4)
    end
  end 
end
