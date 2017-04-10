require_relative 'event'
require 'json'

class Cell
  attr_reader :coordinates, :event

  def initialize(x,y)
    @coordinates = x,y
    @event = nil
    find_event
  end

  private

  def find_event
    events = []
    json = File.read('event_data.json')
    events_list = JSON.parse(json)
    for i in 1..(events_list.length)
        events.push(Event.new(i))
        i += 1
    end
    events.each do |e|
      if e.coords == @coordinates && @event == nil
        @event = {
          "id": e.id,
          "no_tickets": e.no_tickets,
          "price": e.price,
          "coords": e.coords
        }
      end
    end
  end

end
