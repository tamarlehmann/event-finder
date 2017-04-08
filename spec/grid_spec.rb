require 'grid'

describe Grid do
  subject(:grid) { Grid.new }

  describe '::new' do
    it 'Creates a new grid, -10 to +10 (Y axis) and -10 to +10 (X axis)' do
      grid.create_cells
      expect(grid.cells.count).to eq(441)
    end
  end
  
end
