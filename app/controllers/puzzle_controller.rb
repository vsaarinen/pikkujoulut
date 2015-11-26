class PuzzleController < ApplicationController
  before_filter :authorize
  before_filter :load_puzzle

  def load_puzzle
    @puzzle = Puzzle.find(current_team.current_puzzle_id)
  end

  def show
  end

  def guess
    if params[:guess].downcase.strip == @puzzle.answer
      current_team.current_puzzle_id =
        if @puzzle.next_puzzle_id == current_team.start_puzzle_id
          @puzzle.final_puzzle_id
        else
          @puzzle.next_puzzle_id
        end
      current_team.save
    else
      flash.alert = "#{params[:guess]} ei ole oikea ratkaisu"
    end

    redirect_to action: 'show'
  end
end
