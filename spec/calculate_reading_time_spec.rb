require 'calculate_reading_time'

RSpec.describe 'calculate_reading_time' do
  context 'when we have an empty text' do
    it 'returns 0' do
      expect(calculate_reading_time(" ")).to eq 0
    end

    context 'when we have a text containing one word' do
      it 'returns 1' do
        expect(calculate_reading_time("hello ")).to eq 1
      end
    end

    context 'when we have a text containing two hundred words' do
      it 'returns 1' do
        expect(calculate_reading_time("hello " * 200)).to eq 1
      end
    end

    context 'when we have a text containing three hundred words' do
      it 'returns 2' do
        expect(calculate_reading_time("hello " * 300)).to eq 2
      end
    end

    context 'when we have a text containing four hundred words' do
      it 'returns 2' do
        expect(calculate_reading_time("hello " * 400)).to eq 2
      end
    end

    context 'when we have a text containing five thousand words' do
      it 'returns 25' do
        expect(calculate_reading_time("hello " * 5000)).to eq 25
      end
    end
  end
end