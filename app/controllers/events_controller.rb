class EventsController < ApplicationController

  def index
    @events = Event.rank(:row_order)
  end

  def show
    @event = Event.find_by_friendly_id!(params[:id])
  end

end
