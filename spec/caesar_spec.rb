# rspec/caesar_spec.rb
require './lib/caesar'

describe '#caesar_cipher' do
  it 'replaces each letter in a plaintext by a letter some fixed number of positions up/down the alphabet' do
    expect(caesar_cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
  end

  it 'maintains whitespace and non-letter characters' do
    expect(caesar_cipher('!!## &* (())', 5)).to eql('!!## &* (())')
  end

  it 'it can shift letters in a backwards fashion' do
    expect(caesar_cipher('What a string!', -5)).to eql('Rcvo v nomdib!')
  end

  it 'handles edge cases appropriately' do
    expect(caesar_cipher('zyxwv', 8)).to eql('hgfed')
    expect(caesar_cipher('abcde', -8)).to eql('stuvw')
  end
end
