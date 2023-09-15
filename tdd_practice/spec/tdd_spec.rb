require "tdd"
require "rspec"
describe Array do
    let(:arr1) {[-1,0,2,-2,1]}
    let(:arr2) {[[0,4],[2,3]]}
    describe "#uniq" do 
        it "removes duplicates from array correctly" do
            expect([1,2,1,3,3].my_uniq).to eq([1,2,3])
        end

    end
    describe "#two_sum" do
        it "correctly finds pairs of positions that sum to zero" do
            expect(arr1.two_sum).to eq(arr2)
        end
    end
end