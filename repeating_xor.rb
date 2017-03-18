# # # #5
# # # # Here is the opening stanza of an important work of the English language:

# # # # Burning 'em, if you ain't quick and nimble
# # # # I go crazy when I hear a cymbal
# # # # Encrypt it, under the key "ICE", using repeating-key XOR.

# # # # In repeating-key XOR, you'll sequentially apply each byte of the key; 
# # # #the first byte of plaintext will be XOR'd against I, the next C, the next E, 
# # # #then I again for the 4th byte, and so on.

# # # # It should come out to:
# # # # 0b3637272a2b2e63622c2e69692a23693a2a3c6324202d623d63343c2a26226324272765272
# # # # a282b2f20430a652e2c652a3124333a653e2b2027630c692b20283165286326302e27282f
require_relative 'fixed_xor.rb'

str = "Burning 'em, if you ain't quick and nimble\nI go crazy when I hear a cymbal"
key = "ICE"
repeating_key = ""

for i in 0..str.length-1
  repeating_key = repeating_key + key[i%key.size] 
end

bin_str  = ASCII_to_bin(str).join
bin_key  = ASCII_to_bin(repeating_key).join

puts bin_xor(bin_str,bin_key)