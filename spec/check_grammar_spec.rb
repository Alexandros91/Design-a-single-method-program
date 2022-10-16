require 'check_grammar'

RSpec.describe 'check_grammar' do
  context 'when we have an empty string' do
    it 'fails' do
      expect { check_grammar("") }.to raise_error "Not a sentence!"
    end
  end

  context 'when we have a string starting with a capital and ending with a punctuation mark' do
    it 'returns true' do
      expect(check_grammar("Hello mom!")).to eq true
    end
  end

  context 'when we have a string starting with a capital but not ending with a punctuation mark' do
    it 'returns false' do
      expect(check_grammar("Hello dad")).to eq false
    end
  end

  context 'when we have a string starting with a capital but not ending with a proper punctuation mark' do
    it 'returns false' do
      expect(check_grammar("Hello dad,")).to eq false
    end
  end

  context 'when we have a string not starting with a capital but ending with a punctuation mark' do
    it 'returns false' do
      expect(check_grammar("are you there, dad?")).to eq false
    end
  end  

  context 'when we have a string not starting with a capital and not ending with a punctuation mark' do
    it 'returns false' do
      expect(check_grammar("how wonderful")).to eq false
    end
  end 
end