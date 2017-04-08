class Grid
  attr_accessor :cells, :cells_with_events

  def initialize
    @cells = {}
    @cells_with_events = []
    create_cells
    find_cells_with_events
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
