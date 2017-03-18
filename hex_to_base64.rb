# 1. Convert hex to base64 and back.

# The string:

#   49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d

# should produce:

#   SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t
require 'base64'
require_relative 'conversion_helpers'
def hex_to_base64(hex_str)
str = hex_to_ASCII(hex_str)
ASCII_to_base64(str)
end

def base64_to_hex(base64_str)
bin = base64_to_binary(base64_str)  
bin = bin.join
bin_to_hex(bin)
end