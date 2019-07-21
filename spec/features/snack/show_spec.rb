require 'rails_helper'

RSpec.describe 'User' do
  describe 'When I visit a snack show page' do
    before :each do
      @owner = Owner.create(name: "Sam's Snacks")
      @dons  = @owner.machines.create(location: "Don's Mixed Drinks")
      @kitkat = @dons.snacks.create(name: "Kit Kat", price: 2)
    end

    it 'I see info form that snack' do
      visit snack_path(@kitkat)

      expect(page).to have_content(@kitkat.name)
      expect(page).to have_content(@kitkat.price)
      expect(page).to have_content("Average Price")
      expect(page).to have_content("Count of Items")
    end
  end
end
