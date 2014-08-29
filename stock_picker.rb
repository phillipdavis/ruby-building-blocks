def stock_picker(stocks)
	profit = 0
	stock_buy = 0
	stock_sell = 0
	
	stocks.each_with_index do |buy, index|
		(index + 1).upto(stocks.length - 1) do |i|
			if stocks[i] - buy > profit
				profit = stocks[i] - buy
				stock_buy = index
				stock_sell = i
			end
		end
	end
	
	return stock_picks = [stock_buy, stock_sell]
end

p stock_picker([17,3,6,9,15,8,6,1,10])