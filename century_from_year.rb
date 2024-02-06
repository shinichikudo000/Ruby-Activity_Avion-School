def centuryFromYear(year)
    century = year / 100
    century % 100 != 0 ? century + 1 : century
end