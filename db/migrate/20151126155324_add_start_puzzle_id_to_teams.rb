class AddStartPuzzleIdToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :start_puzzle_id, :integer
  end
end
