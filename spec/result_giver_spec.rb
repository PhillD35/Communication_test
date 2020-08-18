require 'result_giver'

describe ResultGiver do

  describe '.which_result' do
    context 'when score 30..32' do
      it 'returns 0' do
        (30..32).each { |score| expect(described_class.which_result(score)).to eql(0) }
      end
    end

    context 'when score 25..29' do
      it 'returns 1' do
        (25..29).each { |score| expect(described_class.which_result(score)).to eql(1) }
      end
    end

    context 'when score 19..24' do
      it 'returns 2' do
        (19..24).each { |score| expect(described_class.which_result(score)).to eql(2) }
      end
    end

    context 'when score 14..18' do
      it 'returns 3' do
        (14..18).each { |score| expect(described_class.which_result(score)).to eql(3) }
      end
    end

    context 'when score 9..13' do
      it 'returns 4' do
        (9..13).each { |score| expect(described_class.which_result(score)).to eql(4) }
      end
    end

    context 'when score 4..8' do
      it 'returns 5' do
        (4..8).each { |score| expect(described_class.which_result(score)).to eql(5) }
      end
    end

    context 'when score 0..3' do
      it 'returns 6' do
        (0..3).each { |score| expect(described_class.which_result(score)).to eql(6) }
      end
    end
  end
end
