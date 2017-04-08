require 'cell'

describe Cell do
  let(:cell) { double :cell, coordinates: [4, 0],  event: nil}
  subject(:cell2) { Cell.new(4,0)}

  describe '::new' do
    it 'Has x and y coordinates' do
      expect(cell.coordinates).to eq([4, 0])
    end

    it 'Has no existing events' do
      expect(cell.event).to eq(nil)
    end
  end

  describe '::event' do
    it 'Loads event information if an event in the cell exists' do
      expect(cell2.event).to eq([1, 57, "$54.38", [4, 0]])
    end
  end



end
