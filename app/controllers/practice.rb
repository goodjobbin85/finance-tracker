def find_element_index(array, value_to_find)
  # Add your solution here
  array.each do |value|
    if value == value_to_find
      index = array.index(value)
      
    else
      nil
    end
    puts index
  end
end