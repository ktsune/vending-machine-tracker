require 'rails_helper'

RSpec.describe Machine, type: :model do
  describe 'validations' do
    it { should validate_presence_of :location }
    it { should belong_to :owner }
  end

  describe "relationships" do
    it {should have_many :machine_snacks}
    it {should have_many(:snacks).through(:machine_snacks)}
  end

  describe "instance methods" do
    it '#average_price' do
      @owner = Owner.create(name: "Sam's Snacks")
      @dons  = @owner.machines.create(location: "Don's Mixed Drinks")
      @kitkat = @dons.snacks.create(name: "Kit Kat", price: 2)
      @twix = @dons.snacks.create(name: "Twix", price: 2)

      expect(@dons.average_price.to_f.round(2)).to eq(2)
    end

    it '#count_of_items' do
      @owner = Owner.create(name: "Sam's Snacks")
      @dons  = @owner.machines.create(location: "Don's Mixed Drinks")
      @kitkat = @dons.snacks.create(name: "Kit Kat", price: 2)
      @twix = @dons.snacks.create(name: "Twix", price: 2)

      expect(@dons.count_of_items).to eq(2)
    end
  end
end
