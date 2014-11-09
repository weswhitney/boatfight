class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :user_id
      t.string :opponent_id
      t.boolean :winner
    end
  end
end
