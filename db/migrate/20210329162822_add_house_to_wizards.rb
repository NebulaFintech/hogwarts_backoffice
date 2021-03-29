class AddHouseToWizards < ActiveRecord::Migration[6.1]
  def change
    add_reference :wizards, :house, index: true
  end
end
