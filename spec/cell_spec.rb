require 'cell'

describe Cell do
  subject(:cell) { Cell.new }

  it 'is an instance of a cell' do
    expect(cell).to be_an_instance_of(Cell)
  end

end
