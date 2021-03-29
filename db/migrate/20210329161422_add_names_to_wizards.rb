class AddNamesToWizards < ActiveRecord::Migration[6.1]
  def change
    add_column :wizards, :names, :string
    add_column :wizards, :surname, :string
    add_column :wizards, :role, :integer
  end
end
