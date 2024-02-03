def disemvowel_trolls(string)
    result = ''

    string.each_char do |char|
        unless 'aeiouAEIOU'.include?(char)
            result << char
        end
    end

    result
end

