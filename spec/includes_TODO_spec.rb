require 'includes_TODO'

RSpec.describe 'includes_TODO' do
  context 'when the text is empty' do
    it 'fails' do
      expect { includes_TODO?("") }. to raise_error "No text provided."
    end
  end

  context 'when the text includes TODO but the # is missing' do
    it 'returns false' do
      expect(includes_TODO?("My TODO list")).to eq false
    end
  end

  context 'when the text includes #todo but with lowercase' do
    it 'returns false' do
      expect(includes_TODO?("My #todo list")).to eq false
    end
  end

  context 'when the text includes almost, but not exactly #TODO' do
    it 'returns false' do
      expect(includes_TODO?("My #TO_DO list")).to eq false
    end
  end

  context 'when the text includes #TODO' do
    it 'returns true' do
      expect(includes_TODO?("My #TODO list")).to eq true
    end
  end

  context 'when the text includes #TODO, but with another word stuck on it' do
    it 'returns true' do
      expect(includes_TODO?("My #TODOlist")).to eq true
    end
  end
end