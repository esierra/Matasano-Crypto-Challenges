require 'base64'
def ASCII_to_base64(bin_str)
# pipe=bin_str.scan(/../).map { |x| x.hex.chr }.join
bin_str = Base64.strict_encode64(bin_str)
end

def ASCII_to_bin(str)
str.unpack('B*')
end

def ASCII_to_hex(str)
str.unpack('H*')[0]
end

def base64_to_binary(base64_str)
decoded_str = Base64.decode64(base64_str).unpack('B*')
end

def base64_to_ascii(base64_str)
decoded_str = 	base64_str.unpack('m').join
end

def hex_to_binary(hex_str)
# num.to_i(16).to_s(2)
 hex_str.hex.to_s(2).rjust(hex_str.size*4,'0')
end

def hex_to_ASCII(hex_str)
hex_str.scan(/../).map { |x| x.hex.chr }.join
end

def bin_to_hex(bin_str)
bin_str.to_i(2).to_s(16)
end

def bin_to_base64(bin_str)
end

str = base64_to_binary("SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t")
str = str.join("")
#puts bin_to_hex(str)