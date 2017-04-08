require 'grid'

describe Grid do
  subject(:grid) { Grid.new }

  describe '::new' do
    it 'Creates a new grid, -10 to +10 (Y axis) and -10 to +10 (X axis)' do
      expect(grid.cells.count).to eq(441)
    end

    it 'Stores a list of cells with events in' do
      expect(grid.cells_with_events).not_to be_empty
    end
  end

end
