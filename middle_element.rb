def gimme(array)
    sorted_array = array.sort
    middle = sorted_array.[1]
    return array.index(middle)
    middle_element
    
    # brute force
    if nums[1] > nums[0] && nums[1] < nums[2] || nums[1] < nums[0] && nums[1] > nums[2]
        return 1
    elsif nums[0] > nums[1] && nums[0] < nums[2] || nums[0] < nums[1] && nums[0] > nums[2]
        return 0
    elsif nums[2] > nums[0] && nums[2] < nums[1] || nums[2] < nums[0] && nums[2] > nums[1]
        return 2
    else
        return nil
    end
end