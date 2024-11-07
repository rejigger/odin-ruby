def median(array)
  return nil if array.empty?
  sorted = array.sort
  len = sorted.length
  (sorted[(len - 1) / 2] + sorted[len / 2]) / 2
end


def stock_picker(prices)
    day_price_hash = Hash.new
    day_number = 0
    prices.each do |i|
        day_price_hash[day_number] = i
        day_number += 1
    end
    prices.sort!

    print prices
    puts day_price_hash

    buy_day = 0
    sell_day = 1

    #edgecase
    if prices.last == day_price_hash[0]
        buy_day += 1
        sell_day += 1
    end

    price_median = median(prices)
    puts price_median

    sell_day = price_median + 1



    #to do: come up with an algo to iterate through sell days to find best day to sell.











end


stock_picker([17,3,6,9,15,8,6,1,10])
