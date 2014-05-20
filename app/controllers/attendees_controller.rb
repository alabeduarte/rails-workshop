class AttendeesController < ApplicationController

  def new
    @attendee = Attendee.new
  end

  def create
    @attendee = Attendee.new attendee_params
    if @attendee.save
      redirect_to @attendee
    else
      render 'new'
    end
  end

  def show
    @attendee = Attendee.find(params[:id])
  end

  def index
    @attendees = Attendee.all
  end

  private
  def attendee_params
    params.require(:attendee).permit(:name)
  end

end
