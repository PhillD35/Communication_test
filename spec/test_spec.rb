require 'test'

describe Test do

  let(:test) { |test| test = described_class.new(nil, nil) }

  describe '#calculate_score_increase' do
    context 'when reverse = false' do
      context 'and input = 1' do
        it 'returns 2' do
          expect(test.calculate_score_increase(1, false)).to eql(2)
        end
      end

      context 'and input = 2' do
        it 'returns 0' do
          expect(test.calculate_score_increase(2, false)).to eql(0)
        end
      end

      context 'and input = 3' do
        it 'returns 1' do
          expect(test.calculate_score_increase(3, true)).to eql(1)
        end
      end
    end

    context 'when reverse = true' do
      context 'and input = 1' do
        it 'returns 0' do
          expect(test.calculate_score_increase(1, true)).to eql(0)
        end
      end

      context 'and input = 2' do
        it 'returns 2' do
          expect(test.calculate_score_increase(2, true)).to eql(2)
        end
      end

      context 'and input = 3' do
        it 'returns 1' do
          expect(test.calculate_score_increase(3, false)).to eql(1)
        end
      end
    end
  end

  describe '#which_result' do
    context 'when score 30..32' do
      it 'returns 0' do
        (30..32).each do |score|
          test.score = score
          expect(test.which_result).to eql(0)
        end
      end
    end

    context 'when score 25..29' do
      it 'returns 1' do
        (25..29).each do |score|
          test.score = score
          expect(test.which_result).to eql(1)
        end
      end
    end

    context 'when score 19..24' do
      it 'returns 2' do
        (19..24).each do |score|
          test.score = score
          expect(test.which_result).to eql(2)
        end
      end
    end

    context 'when score 14..18' do
      it 'returns 3' do
        (14..18).each do |score|
          test.score = score
          expect(test.which_result).to eql(3)
        end
      end
    end

    context 'when score 9..13' do
      it 'returns 4' do
        (9..13).each do |score|
          test.score = score
          expect(test.which_result).to eql(4)
        end
      end
    end

    context 'when score 4..8' do
      it 'returns 5' do
        (4..8).each do |score|
          test.score = score
          expect(test.which_result).to eql(5)
        end
      end
    end

    context 'when score 0..3' do
      it 'returns 6' do
        (0..3).each do |score|
          test.score = score
          expect(test.which_result).to eql(6)
        end
      end
    end
  end
end
