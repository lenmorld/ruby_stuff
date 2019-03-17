require 'burger'

describe Burger do
    describe "#apply_ketchup" do
        context "with ketchup" do
            before do
                @burger = Burger.new(:ketchup => true)
                @burger.apply_ketchup
            end
    
            it "sets the ketchup flag to true" do
                @burger.has_ketchup?.should be true
            end
        end
    
        context "without ketchup" do
            before do
                @burger = Burger.new(:ketchup => false)
                @burger.apply_ketchup
            end
    
            it "sets the ketchup flag to false" do
                @burger.has_ketchup?.should be false
            end
        end
    end

    describe "haha" do
        it "returns haha" do
            @burger = Burger.new
            @burger.sample.should == "haha"
        end
        
    end
    
end