require 'test'

describe Test do

  let(:test) { |test| test = described_class.new(nil) }

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
end
