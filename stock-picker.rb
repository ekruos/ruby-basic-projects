def stock_picker(prices)
  
  purchase = [0,1]
  best_price = prices[1]-prices[0]
  

  (0..prices.length-1).each do |buy|
    (buy+1..prices.length-1).each do |sell|
      if prices[sell] - prices[buy] > best_price
        purchase = [buy,sell]
        best_price = prices[sell] - prices[buy]
      end
    end
  end
  purchase
end

print stock_picker([17,3,6,9,15,8,6,1,10])
# Should print [1,4]
print stock_picker([10,6,2,1,2,0])
# Should print [3,4]