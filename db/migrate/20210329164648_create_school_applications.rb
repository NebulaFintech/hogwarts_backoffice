class CreateSchoolApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :school_applications do |t|
      t.belongs_to :wizard
      t.belongs_to :house
      t.integer :status

      t.timestamps
    end
  end
end
