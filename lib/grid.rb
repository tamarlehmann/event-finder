class Grid
  attr_accessor :cells

  def initialize
    @cells = []
  end

  def create_cells
    441.times do
      @cells.push("cell")
    end
  end

end
