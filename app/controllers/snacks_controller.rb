class SnacksController < ApplicationController
  def show
      @snack = Snack.find(params[:id])
      @machine = Machine.find(params[:id])
  end
end
