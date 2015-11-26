class CreatePuzzles < ActiveRecord::Migration
  def change
    create_table :puzzles do |t|
      t.string :image
      t.text :description
      t.integer :next_puzzle_id, index: true, foreign_key: true
      t.integer :final_puzzle_id, foreign_key: true
      t.integer :final_puzzle_team_id, oreign_key: true

      t.timestamps null: false
    end
  end
end
