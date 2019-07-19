class SnacksController < ApplicationController
  def show
    @snack = Snack.find(params[:id])
    @snacks = Snack.all
    # binding.pry
    # @average_price = @snacks.average_price
  end
end
