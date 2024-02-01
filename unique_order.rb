def unique_in_order(sequence)
    unique_in_order_chars = []

    sequence[0..-1].each do |char|
        unique_in_order_chars << char unless unique_in_order_chars.last == char
    end

    unique_in_order_chars
end