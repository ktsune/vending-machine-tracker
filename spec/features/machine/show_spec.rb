require 'rails_helper'

RSpec.describe 'User' do
  describe 'When I visit a vending machine show page' do
    before :each do
      @owner = Owner.create(name: "Sam's Snacks")
      @dons  = @owner.machines.create(location: "Don's Mixed Drinks")
      @kitkat = @dons.snacks.create(name: "Kit Kat", price: 2)
    end

    it 'I see the name of all of the snacks associated with that vending machine along with their price' do
      visit snack_path(@kitkat)

      expect(page).to have_content(@kitkat.name)
      expect(page).to have_content(@kitkat.price)
    end
  end
end
