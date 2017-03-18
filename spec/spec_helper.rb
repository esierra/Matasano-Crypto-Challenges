require 'spec_helper'
# rspec --configure autotest
require_relative '../hex_to_base64'
require_relative '../fixed_xor'
require_relative '../single_byte_xor'

describe 'convert hex to base64' do
  it 'conversion' do
    hex = "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d"
    base64 = "SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t"
expect(hex_to_base64(hex)).to eq (base64)
expect(base64_to_hex(base64)).to eq(hex)
  end
end

describe 'fixed xor' do
  it 'xors two strings' do
  str1 = "1c0111001f010100061a024b53535009181c"
  str2 = "686974207468652062756c6c277320657965"
  xored = "746865206b696420646f6e277420706c6179"
  expect(fixed_xor(str1,str2)).to eq(xored)
    end
  end

describe 'single_byte_xor' do
  it 'should find decrypted message using one char key' do
    expect(Single_Byte_xor("1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736")).to eq ("Cooking MC's like a pound of bacon")
  end
end
