def reverse_a_string(string)
    str = string.split('')
    new_array=[]
   until str.empty? do
      new_array << str.pop
    end
    new_array.join
    
end

reverse_a_string("hello")

