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
end