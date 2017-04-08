class Grid
  attr_accessor :cells

  def initialize
    @cells = {}
    create_cells
  end

  def create_cells
    (-10..10).each do |x|
      (-10..10).each do |y|
        coords="#{x},#{y}"
        @cells[coords]=(Cell.new(x,y))
      end
    end
  end

end
