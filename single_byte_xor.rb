#3
# The hex encoded string:
# 1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736
# ... has been XOR'd against a single character. Find the key, decrypt the message.
require_relative 'conversion_helpers'
require_relative 'fixed_xor'

def Single_Byte_xor(str)
  arr = ('0'..'9').to_a + ('a'..'z').to_a + ('A'..'Z').to_a #array with ASCII characters

  arr.each { |x|
            cipher = hex_to_binary(str)
            cipher_len = str.size
            char = (ASCII_to_bin(x).join('')*(cipher_len/2))

            hex = fixed_xor(cipher, char)
            hex = bin_to_hex(hex)
            plaintext = hex_to_ASCII(hex)

  return plaintext if plaintext =~/[^A-Z]{2,} [a-z]/
            }
end

# puts Single_Byte_xor("1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736")