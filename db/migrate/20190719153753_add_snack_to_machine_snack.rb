class AddSnackToMachineSnack < ActiveRecord::Migration[5.1]
  def change
    add_reference :machine_snacks, :snack, foreign_key: true
  end
end
