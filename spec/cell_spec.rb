require_relative '../lib/cell'

describe "A cell" do
  let(:cell) {Cell.new}

  it 'exists' do

  end

  it 'is initially alive' do
    expect(cell.alive?).to be_truthy
  end

  it 'can die' do
    expect(cell.alive?).to be_truthy
    cell.kill
    expect(cell.alive?).to be_falsy
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
      expect(cell.alive?).to be_falsy
    end

    it 'a dead cell with fewer than two live neighbors stays dead' do
      cell.kill
      expect(cell.neighbors.count).to be_within(1).of(0)
      expect(cell.alive?).to be_falsy
    end

    # TODO: Cell rules
    it 'a dead cell with exactly three live neighbors becomes alive' do
      cell.kill
      expect(cell.neighbors.count).to be_within(1).of(0)
      expect(cell.alive?).to be_falsy

      3.times do
        cell.add_neighbor
        cell.tick
      end
      expect(cell.neighbors.count).to eq(3)
      expect(cell.alive?).to be_truthy
    end
  end

end
