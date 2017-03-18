#2
# Write a function that takes two equal-length buffers and produces their XOR combination.
require_relative 'hex_to_base64.rb'

def fixed_xor(str1,str2)
str1 = hex_to_binary(str1)
str2 = hex_to_binary(str2)
xored = (str1.to_i(2) ^ str2.to_i(2)).to_s(2)
bin_to_hex(xored)
end

#XORs two binary strings
def bin_xor(str1,str2)
xored = (str1.to_i(2) ^ str2.to_i(2)).to_s(2)
bin_to_hex(xored)
end
# puts fixed_xor("1c0111001f010100061a024b53535009181c","686974207468652062756c6c277320657965")