
# 1) Sales Tax
def sales_tax(number)
#    puts number + 0.088
    
    # if number.is_a? String
    #     puts "You shall not pass!"
    # end

    if number.is_a? Integer
        # final = number + number*0.088
        # puts final
        divide = number/100
        multiply = divide*8.8
        result = multiply
        puts result
    
elsif number.is_a? String
        puts "You shall not pass! Give me a number please.."
    end 
end

sales_tax(200)
# 2)

