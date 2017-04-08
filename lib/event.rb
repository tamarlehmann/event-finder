require 'json'

class Event
  attr_reader :id

  def initialize(id)
    @id = id
  end


  def load_events
    json = File.read('event_data.json')
    events = JSON.parse(json)
  end

end
