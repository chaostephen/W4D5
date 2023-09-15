require "tdd"
require "rspec"
describe Array do
    
    describe "#uniq" do 
        it "removes duplicates from array correctly" do
            expect([1,2,1,3,3].my_uniq).to eq([1,2,3])
        end

    end

    let(:arr1) {[-1,0,2,-2,1]}
    let(:arr2) {[[0,4],[2,3]]}
    describe "#two_sum" do
        it "correctly finds pairs of positions that sum to zero" do
            expect(arr1.two_sum).to eq(arr2)
        end
    end

    let(:rows) {[[0,1,2],[3,4,5],[6,7,8]]}
    let(:cols) {[[0,3,6],[1,4,7],[2,5,8]]}
    describe "#my_transpose" do 
        it "will convert row oriented and column oriented representations" do
            expect(rows.my_transpose).to eq(cols)
        end
    end
end

describe "stock_picker" do
    let(:stocks) {[1,7,3,5,8,9,0]}
    let(:profits) {[1,9]}
    it "will find the pair of days that produce the highest profit" do
        expect(stock_picker(stocks)).to eq(profits)
    end
end