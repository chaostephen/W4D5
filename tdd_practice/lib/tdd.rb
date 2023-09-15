class Array
    def my_uniq
        hsh1=Hash.new(0)
        self.each do |el|
            hsh1[el]+=1
        end
        unique=[]
        hsh1.each do |k,v|
            unique<<k
        end
        unique
    end
    def two_sum
        sums=[]
        (0...self.length-1).each do |i|
            (i+1...self.length).each do |j|
                sums<<[i,j] if self[i]+self[j]==0
            end
        end
        sums
    end
    def my_transpose
        results = Array.new(self.length) {Array.new(self.length)}
        self.each_with_index do |el, idx|
            (0...self.length).each do |jdx|
                results[jdx][idx] = el[jdx] 
            end
        end
        results
    end
end

# Write a method that takes an array of stock prices (prices on days 0, 1, ...),
# and outputs the most profitable pair of days on which to first buy the stock and 
# then sell the stock. Remember, you can't sell stock before you buy it!


def stock_picker(arr)
    results = []
    max_profit = 0
    arr.each_with_index do |ele, idx|
        (idx...arr.length).each do |jdx|
            if arr[jdx]-arr[idx] > max_profit
                max_profit = arr[jdx]-arr[idx]
                results = [arr[idx],arr[jdx]]
            end
        end
    end
    results
end
