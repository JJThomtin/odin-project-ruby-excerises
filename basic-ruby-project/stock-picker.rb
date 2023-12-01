def stock_picker(stock_prices)
    min_price = stock_prices[0]
    day = [0, 0]
    profit = 0
    day_length = stock_prices.length
    stock_prices.each_with_index do |price, index|
        if price < min_price
            min_price = price
            max_price = stock_prices.last(day_length - index).max
            if max_price - price > profit
                day[0] = index
                day[1] = stock_prices.last(day_length - index).index(max_price)
                profit = max_price - min_price
            end
        end
    end
    day
end
my_range = [17,3,6,9,15,8,6,1,10]
puts stock_picker(my_range).inspect