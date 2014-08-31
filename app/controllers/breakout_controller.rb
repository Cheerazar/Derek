class BreakoutController < ApplicationController
  def index
  end

  def new
  end

  def edit

  end

  def show
  end

  def update
  end

  def destroy
    breakout_id = params[:id]
    breakout = Breakout.find(breakout_id)
    breakout.destroy
    redirect_to user_breakouts_path
  end
end



