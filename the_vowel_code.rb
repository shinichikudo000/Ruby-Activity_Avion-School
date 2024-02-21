def encode(input_string)
    encoded_string = input_string.gsub(/[aeiou]/, 'a' => '1', 'e' => '2', 'i' => '3', 'o' => '4', 'u' => '5')
    return encoded_string
end

def decode(input_string)
    decoded_string = input_string.gsub(/[12345]/, '1' => 'a', '2' => 'e', '3' => 'i', '4' => 'o', '5' => 'u')
    return decoded_string
end