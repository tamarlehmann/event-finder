require 'grid'

describe Grid do
  subject(:grid) { Grid.new }

  describe '::new' do
    it 'Creates a new grid' do
      expect(grid).to be_an_instance_of(Grid)
    end

    it 'Stores a number of cells' do
      expect(grid.cells).to eq([])
    end
  end
end
