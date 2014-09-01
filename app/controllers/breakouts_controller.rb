class BreakoutsController < ApplicationController

  def index
    breakouts = Breakout.all
    @requests, @offers = [], []
    breakouts.each do |breakout|
      breakout.request_type == 'offer' ? @offers << breakout : @requests << breakout
    end
  end

  def new
  end

  def edit

  end

  def show
    @breakout = Breakout.find(params[:id])
  end

  def update
  end

  def destroy
    breakout_id = params[:id]
    breakout = Breakout.find(breakout_id)
    breakout.destroy
    redirect_to user_breakouts_path
  end

  private
  def breakout_params
    params.require(:breakout).permit(:category, :title, :body, :user_id, :location, :time, :request_type)
  end
end



