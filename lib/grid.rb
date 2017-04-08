require_relative 'cell'
require 'json'

class Grid
  attr_accessor :cells, :cells_with_events

  def initialize
    @cells = {}
    @cells_with_events = []
    create_cells
    find_cells_with_events
  end

  def find_events
    puts "Please Input Coordinates e.g. 2, 3"
    response = gets.chomp
    find_closest_events(response)
  end

  def find_closest_events(coords)
    counter = 0
    hash = {}
    output = "Closest Events to (#{coords})\n"

    @cells_with_events.each do |cell|
      xdifference = (coords.split(",")[0].to_i) - (cell[0].split(",")[0].to_i)
      ydifference = (coords.split(",")[1].to_i) - (cell[0].split(",")[1].to_i)
      distance = xdifference.abs + ydifference.abs
      hash.store(distance, cell[0])
    end
    hash.sort_by{|k,v| k}.to_h.each do |k, v|
        c = @cells[v]
        output += "Event #{sprintf '%03d', c.event[:id]} -  #{c.event[:price]}, Distance #{k}" + "\n"
        counter += 1
        break if counter == 5
    end
    puts output
  end

  private

  def create_cells
    (-10..10).each do |x|
      (-10..10).each do |y|
        coords="#{x}, #{y}"
        @cells[coords]=(Cell.new(x,y))
      end
    end
  end

  def find_cells_with_events
    @cells.each do |c|
      @cells_with_events.push(c) if c[1].event != nil
    end
  end

end
