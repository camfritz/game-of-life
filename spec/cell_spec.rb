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

  xit 'has a tick method' do

  end

  describe 'after a tick' do

    xit 'a live cell with fewer than two live neighbors dies' do

    end

    xit 'a dead cell with fewer than two live neighbors stays dead' do

    end

    # TODO: Cell rules

  end

end
