require 'json'

class Event
  attr_reader :id, :no_tickets, :price, :coords

  def initialize(id)
    @id = id
    @no_tickets = nil
    @price = nil
    @coords = nil
    load_events
  end

  private

  def load_events
    json = File.read('event_data.json')
    events = JSON.parse(json)
    events.each do |event|
      if event["id"] == @id
        @no_tickets = event["no_tickets"]
        @price = event["price"]
        @coords = event["x_coord"], event["y_coord"]
      end
    end
  end

end
