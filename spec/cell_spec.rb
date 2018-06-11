require_relative '../lib/cell'

describe "A cell" do
  let(:cell) {Cell.new}

  it 'exists' do

  end

  it 'is initially alive' do
    expect(cell).to be_alive
  end

  it 'can die' do
    expect(cell).to be_alive
    cell.kill
    expect(cell).not_to be_alive
  end

  it 'has neighbors, which is initially an empty array' do
    expect(cell.neighbors).to be_empty
  end

  it 'has a tick method' do
    expect(cell).to respond_to(:tick)
  end

  describe 'after a tick' do

    it 'a live cell with fewer than two live neighbors dies' do
      expect(cell.neighbors.count).to be_within(1).of(0)
      cell.tick
      expect(cell).not_to be_alive
    end

    it 'a dead cell with fewer than two live neighbors stays dead' do
      cell.kill
      expect(cell.neighbors.count).to be_within(1).of(0)
      expect(cell).not_to be_alive
    end

    # TODO: Cell rules
    it 'a dead cell with exactly three live neighbors becomes alive' do
      cell.kill
      expect(cell.neighbors.count).to be_within(1).of(0)
      expect(cell).not_to be_alive

      3.times do
        cell.add_neighbor
        cell.tick
      end
      expect(cell.neighbors.count).to eq(3)
      expect(cell).to be_alive
    end
  end

end
