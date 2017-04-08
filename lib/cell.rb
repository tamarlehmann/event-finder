class Cell
  attr_reader :coordinates, :event

  def initialize(x,y)
    @coordinates = x,y
    @event = nil
    find_event
  end

  def find_event
    events = []
    json = File.read('event_data.json')
    events_list = JSON.parse(json)
    for i in 0..(events_list.length)
      if Event.new(i) != "Event doesn't exist."
        events.push(Event.new(i))
        i += 1
      end
    end
    events.each do |e|
      if e.coords == @coordinates
        @event = {
          "id": e.id,
          "no_tickets": e.no_tickets,
          "price": e.price,
          "coords": e.coords
        } if @event == nil
      end
    end
  end

end
