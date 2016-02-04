#!/usr/bin/env ruby
require 'Calculator'

describe Calculator do
	let(:calc){Calculator.new}
	
	describe "#sub" do
	
		it "returns an interger" do
			expect(calc.sub 2,1).to eq 1
		end
		
		context "when subtracting zero to an interger" do
			it "returns the interger" do
				expect(calc.sub 5, 0).to eq 5
			end
		end
		
		it "is dependent on the operation order" do
			expect(calc.sub 1, 2).to eq -1
		end
		
		it "accepts more than 2 arguments" do
			expect(calc.sub 12, 4, 3).to eq 5
		end
	end
end