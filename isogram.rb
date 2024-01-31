def isogram(str)
    lowercase_str = str.downcase

    unique_chars = SET.new

    lowercasse_str.each_char do |char|
        return false if unique_chars.include?(char)

        unique_chars.add(char)
    end

    true
end