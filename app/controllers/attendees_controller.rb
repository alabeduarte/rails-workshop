class AttendeesController < ApplicationController

  def new
  end

  def create
    @attendee = Attendee.new attendee_params

    @attendee.save
    redirect_to @attendee
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
