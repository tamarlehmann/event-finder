require 'event'

describe Event do
  subject(:event) { Event.new(1) }

  describe 'attributes' do
    it 'Has a unique id' do
      expect(event.id).to eq(1)
    end

    it 'Has a number of tickets' do
      expect(event.no_tickets).to eq(57)
    end

    it 'Has a price' do
      expect(event.price).to eq("$54.38")
    end

    it 'Has a pair of coordinates' do
      expect(event.coords).to eq([4, 0])
    end
  end

end
