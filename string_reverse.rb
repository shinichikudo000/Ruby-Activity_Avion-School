def reverse(string)
    l = string.length
    reversed_string = ''
    while l > 0
        reversed_string << string.[l-1]
        l -= 1
    end
    return reverse_string
end