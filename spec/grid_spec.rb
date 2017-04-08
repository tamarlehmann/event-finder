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

  describe 'Finding Closest Events' do
    it 'Returns the 5 closest events' do
      expect(grid.find_closest_events("2, 5")).to eq("Event 011 -  $44.30, Distance 1\nEvent 028 -  $72.65, Distance 2\nEvent 046 -  $31.65, Distance 4\nEvent 073 -  $35.30, Distance 5\nEvent 003 -  $73.87, Distance 6")
    end
  end

end
