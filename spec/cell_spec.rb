require 'cell'

describe Cell do
  subject(:cell) { Cell.new(1,2) }

  describe '::new' do
    it 'is an instance of a cell' do
      expect(cell).to be_an_instance_of(Cell)
    end

    it 'has x and y coordinates' do
      expect(cell.coordinates).to eq([1,2])
    end

    it 'has no existing events' do
      expect(cell.event).to eq(nil)
    end
  end



end
