def stock_picker(stock_price) 
  best = 0
  indexes = nil
  stock_price.each_with_index do |stock, index|
    for a in (index...stock_price.length)
      diff = stock_price[a] - stock
      if diff > best
        best = diff
        indexes = [index, a]
        end
    end
  end
  indexes
end

stock_picker([2,3,6,9,15,8,6,4,1])
