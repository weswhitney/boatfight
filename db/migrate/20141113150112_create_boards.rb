class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :type_of_ship
      t.string :start_x
      t.string :start_y
      t.string :end_x
      t.string :end_y
      t.integer :hits
    end
  end
end
