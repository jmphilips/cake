
def greatest_difference(arr)

  min_price = arr[0]
  max_profit = arr[1] - min_price

  arr.each_with_index do |current_price, index|

    potential_profit = current_price - min_price

    max_profit = [potential_profit, max_profit].max

    min_price = [current_price, min_price].min
  end

  max_profit
end

def caffeineBuzz(n)
   original_string = ""
   if (n % 4 == 0) && (n % 3 == 0) 
     original_string += "Coffee"
     if (n.even?) 
       original_string += "Script"
     end
   elsif (n % 3 == 0)
     original_string += "Java"
     if n.even?
       original_string += "Script"
     end
   else 
     original_string += "mocha_missing"
end