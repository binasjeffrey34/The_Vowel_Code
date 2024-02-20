def encode(value)
    mapping = {'a' => '1', 'e' => '2', 'i' => '3', 'o' => '4', 'u' => '5'}
    encoded_value = ""
    value.each_char do |char|
      encoded_value += mapping[char.downcase] || char
    end
    return encoded_value
  end
  
  def decode(encoded_value)
    mapping = {'1' => 'a', '2' => 'e', '3' => 'i', '4' => 'o', '5' => 'u'}
    decoded_value = ""
    encoded_value.each_char do |char|
      decoded_value += mapping[char] || char
    end
    return decoded_value
  end
