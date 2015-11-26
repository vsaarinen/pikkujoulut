class RemoveFinalPuzzleTeamIdFromPuzzles < ActiveRecord::Migration
  def change
    remove_column :puzzles, :final_puzzle_team_id, :integer
  end
end
