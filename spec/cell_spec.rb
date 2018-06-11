require_relative '../lib/cell'

describe "A cell" do
  # before(:each) do
  #   let(:cell) { Cell.new }
  # end

  it 'exists' do
    Cell.new
  end

  it 'is initially alive' do
    cell = Cell.new
    expect(cell.alive?).to be_truthy
  end

  it 'can die' do
    cell = Cell.new
    expect(cell.alive?).to be_truthy
    cell.kill
    expect(cell.alive?).to be_falsy
  end

  it 'has neighbors, which is initially an empty array' do
    cell = Cell.new
    expect(cell.neighbors).to be_empty
  end

  it 'has a tick method' do
    cell = Cell.new
    expect(cell).to respond_to(:tick)
  end

  describe 'after a tick' do

    it 'a live cell with fewer than two live neighbors dies' do
      cell = Cell.new
      expect(cell.neighbors.count).to be_within(1).of(0)
      cell.tick
      expect(cell.alive?).to be_falsy
    end

    xit 'a dead cell with fewer than two live neighbors stays dead' do

    end

    # TODO: Cell rules

  end

end
