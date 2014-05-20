class AttendeesController < ApplicationController

  def new
  end

  def create
    @attendee = Attendee.new(params[:attendee])

    @attendee.save
    redirect_to @attendee
  end

end
