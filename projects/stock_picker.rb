# Implement a method #stock_picker that takes in an array of stock prices, 
# one for each hypothetical day. 
# It should return a pair of days(array indexes of lowest and highest value) representing the best day to buy
# and the best day to sell. Days start at 0.
array = [17,3,6,9,15,8,6,1,10]

def stock_picker(array)
  #return index of lowest value and highest value
  profits = {}
  array.each_with_index do |sell_price, sell_index|
    array.each_with_index do |buy_price, buy_index|
      if buy_index > sell_index
      p  profits[[sell_index,buy_index]] = buy_price - sell_price
      end
    end
  end
  p profits = profits.sort_by { |k,v| v}
  max_profit = profits[-1]
  p "Buy on day #{max_profit[0].first} and sell on day #{max_profit[0].last} for the maximum profit of $#{max_profit[1]}"
  p max_profit.first
end

stock_picker(array)